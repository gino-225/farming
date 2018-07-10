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
    #where("title ILIKE :search OR description ILIKE :search", search: "%#{search}%")
    #SELECT `categories`.* FROM `categories` WHERE (title LIKE '%sff%')
    #where("title LIKE ?", "%#{search}%")
    #where("title LIKE", "%#{search}%" "OR description LIKE", "%#{search}%")

    #where("name ILIKE ? OR address ILIKE ?", "%#{params[:q]}%", "%#{params[:q]}%").all.order('LOWER(name)')
    #where("title ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%").all
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
