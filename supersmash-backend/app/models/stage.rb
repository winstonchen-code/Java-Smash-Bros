class Stage < ApplicationRecord
    has_many :fighter_stages 
    has_many :fighters, through: :fighter_stages
end
