class CreateCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :counts do |t|

      t.timestamps
    end
  end
end
