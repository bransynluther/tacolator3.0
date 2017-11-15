class AddCountRelations < ActiveRecord::Migration[5.1]
  def change
   add_column :counts, :item_total_id, :integer
   add_column :counts, :menu_item_id, :integer
  end
end
