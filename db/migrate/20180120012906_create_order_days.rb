class CreateOrderDays < ActiveRecord::Migration[5.1]
  def change
    create_table :order_days do |t|
      
      t.timestamps
    end
  end
end
