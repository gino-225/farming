class ChangeColumnSize < ActiveRecord::Migration[5.1]
  def up
   change_column :fields, :size, :integer
 end

 def down
   change_column :fields, :size, :text
 end
end
