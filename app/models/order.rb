class Order < ActiveRecord::Base
  attr_accessible :drink_id,
                  :guest_id,
                  :quantity

  belongs_to :guest
  belongs_to :drink
end
