class Guest < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :orders
  has_many :drinks, :through => :orders
  
  validates :first_name, presence: :true
  validates :last_name, presence: :true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
