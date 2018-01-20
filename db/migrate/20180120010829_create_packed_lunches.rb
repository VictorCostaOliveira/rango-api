class CreatePackedLunches < ActiveRecord::Migration[5.1]
  def change
    create_table :packed_lunches do |t|
      t.string :name
      t.boolean :has_salad

      t.timestamps
    end
  end
end
