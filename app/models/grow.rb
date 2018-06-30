class Grow < ApplicationRecord
  #has_many :crops
  belongs_to :crop
  belongs_to :field
  has_many :plantings
  has_many :harvestings

  validates :title, :presence => true


  # def select_table(id)
  #   plantings = Planting.where(grow_id: id)
  # end

  def self.search(search)
    where("title LIKE ?", "%#{search}%")
  end

  def select_table(type, id)
    case type
      when 'planting'
        Planting.where(grow_id: id)

      when 'harvesting'
        Harvesting.where(grow_id: id)

    end
  end





end
