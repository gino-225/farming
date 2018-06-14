class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
   rename_column :measurements, :type, :measure_type
 end
end
