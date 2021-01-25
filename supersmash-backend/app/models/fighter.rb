class Fighter < ApplicationRecord
    has_many :fighter_stages 
    has_many :stages, through: :fighter_stages
end
