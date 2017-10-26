class CreateItemMaths < ActiveRecord::Migration[5.1]
  def change
    create_table :item_maths do |t|
      t.integer :item_id
      t.integer :total_id
      t.float :item_price
      t.integer :quantity
      t.float :total_price
      t.integer :total_calories

      t.timestamps
    end
  end
end
