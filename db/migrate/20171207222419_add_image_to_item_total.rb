class AddImageToItemTotal < ActiveRecord::Migration[5.1]
  def change
      add_column :menu_items, :images, :string
  end
end
