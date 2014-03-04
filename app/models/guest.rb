class Guest < ActiveRecord::Base
  attr_accessible :first_name, :last_name

  has_many :orders
  has_many :drinks, :through => :orders
end
