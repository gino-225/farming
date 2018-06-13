class Grow < ApplicationRecord
  #has_many :crops
  belongs_to :crop
  belongs_to :field
  has_many :plantings


  def select_table(id)
    plantings = Planting.where(grow_id: id)
  end

end
