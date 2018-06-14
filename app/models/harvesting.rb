class Harvesting < ApplicationRecord
  belongs_to :grow
  belongs_to :measurement
end
