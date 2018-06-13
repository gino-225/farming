class CreatePlantings < ActiveRecord::Migration[5.1]
  def change
    create_table :plantings do |t|
      t.date :date
      t.boolean :seed_treated
      t.text :soil_condition

      t.timestamps
    end
  end
end
