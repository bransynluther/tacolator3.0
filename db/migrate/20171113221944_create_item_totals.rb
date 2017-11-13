class CreateItemTotals < ActiveRecord::Migration[5.1]
  def change
    create_table :item_totals do |t|

      t.timestamps
    end
  end
end
