class CreateMeasurements < ActiveRecord::Migration[5.1]
  def change
    create_table :measurements do |t|
      t.string :type
      t.integer :weight

      t.timestamps
    end
  end
end
