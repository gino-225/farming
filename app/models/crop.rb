class Crop < ApplicationRecord
    #belongs_to :grow
    has_many :grows
end
