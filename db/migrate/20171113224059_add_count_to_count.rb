class AddCountToCount < ActiveRecord::Migration[5.1]
  def change
    add_column :counts, :count, :integer
  end
end
