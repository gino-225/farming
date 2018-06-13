class AddCropToGrow < ActiveRecord::Migration[5.1]
  def change
    add_column :grows, :crop_id, :integer
    add_index :grows, :crop_id
  end
end
