class AddDateToGrow < ActiveRecord::Migration[5.1]
  def change
    add_column :grows, :startdate, :date
  end
end
