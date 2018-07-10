class AddGrowToHarvesting < ActiveRecord::Migration[5.1]
  def change
    add_column :harvestings, :grow_id, :integer
    add_index :harvestings, :grow_id
  end
end
