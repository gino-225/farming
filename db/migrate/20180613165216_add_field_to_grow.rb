class AddFieldToGrow < ActiveRecord::Migration[5.1]
  def change
    add_column :grows, :field_id, :integer
    add_index :grows, :field_id
  end
end
