class AddGrowToPlanting < ActiveRecord::Migration[5.1]
  def change
    add_column :plantings, :grow_id, :integer
    add_index :plantings, :grow_id
  end
end
