class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.float :price
      t.integer :calories

      t.timestamps
    end
  end
end
