class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.integer :calories
      t.decimal :price

      t.timestamps
    end
  end
end
