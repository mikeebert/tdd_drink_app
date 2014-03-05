require 'spec_helper'
require 'orders/order_adjuster'

describe OrdersController do
  it "should create an order" do
    guest = Guest.create(first_name: "Jim", last_name: "No")
    
    OrderAdjuster.should_receive(:add_order).with(guest.id.to_s, "1")
    
    post :create, {:guest_id => guest.id,
                   :drink_id => 1}    
  end
end