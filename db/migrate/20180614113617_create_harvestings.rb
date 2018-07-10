class CreateHarvestings < ActiveRecord::Migration[5.1]
  def change
    create_table :harvestings do |t|
      t.date :date
      t.integer :quantity
      t.boolean :field_finished

      t.timestamps
    end
  end
end
