class CreateFields < ActiveRecord::Migration[5.1]
  def change
    create_table :fields do |t|
      t.string :title
      t.text :size
      t.integer :number
      t.text :description

      t.timestamps
    end
  end
end
