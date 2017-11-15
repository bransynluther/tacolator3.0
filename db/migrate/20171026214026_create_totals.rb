class CreateTotals < ActiveRecord::Migration[5.1]
  def change
    create_table :totals do |t|
      t.float :totalprice
      t.integer :totalcalories

      t.timestamps
    end
  end
end
