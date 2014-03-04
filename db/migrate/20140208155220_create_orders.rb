class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :drink_id
      t.integer :guest_id

      t.timestamps
    end
  end
end
