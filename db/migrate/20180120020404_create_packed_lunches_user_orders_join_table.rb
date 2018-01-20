class CreatePackedLunchesUserOrdersJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_join_table :packed_lunches, :user_orders do |t|
     t.index :packed_lunch_id
     t.index :user_order_id
   end
  end
end
