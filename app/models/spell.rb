class Spell < ApplicationRecord
    has_many :grimoire_spells
    has_many :grimoires, through: :grimoire_spells 
end
