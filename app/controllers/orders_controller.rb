require 'orders/order_adjuster'

class OrdersController < ApplicationController
  def create
    OrderAdjuster.add_order(params[:guest_id], params[:drink_id])

    redirect_to guest_path(Guest.find(params[:guest_id]))
  end

  def destroy
    OrderAdjuster.delete_order(params[:guest_id], params[:drink_id])

    redirect_to guest_path(Guest.find(params[:guest_id]))
  end
end
