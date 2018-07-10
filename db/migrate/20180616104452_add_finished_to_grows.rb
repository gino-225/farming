class AddFinishedToGrows < ActiveRecord::Migration[5.1]
  def change
    add_column :grows, :finished, :boolean
  end
end
