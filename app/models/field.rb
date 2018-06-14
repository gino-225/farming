class Field < ApplicationRecord
  has_many :grows

  def select_table(id)
    plantings = Grow.where(field_id: id)
  end
end
