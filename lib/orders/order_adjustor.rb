class OrderAdjuster

  def self.add_order(guest_id, drink_id)
    order = Order.find_by(guest_id: guest_id, drink_id: drink_id)

    if order
      order.quantity += 1
    else
      order = Order.new(guest_id: guest_id, drink_id: drink_id, quantity: 1)
    end

    order.save
  end

  def self.delete_order(guest_id, drink_id)
    order = Order.find_by(guest_id: guest_id, drink_id: drink_id)

    if order.quantity == 1
      order.destroy
    else
      order.quantity -= 1
      order.save
    end
  end
end
