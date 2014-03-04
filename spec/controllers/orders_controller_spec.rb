require 'spec_helper'
require 'orders/order_adjuster'

describe OrdersController do
  it "tells the order adjuster to add an order" do
    OrderAdjuster.should_receive(:add_order)
    Guest.should_receive(:find).and_return 1
    post :create, params: {:guest_id => 1, :drink_id => 2}
  end
end
