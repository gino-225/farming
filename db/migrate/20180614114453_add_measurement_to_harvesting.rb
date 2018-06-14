class AddMeasurementToHarvesting < ActiveRecord::Migration[5.1]
  def change
    add_column :harvestings, :measurement_id, :integer
    add_index :harvestings, :measurement_id
  end

end
