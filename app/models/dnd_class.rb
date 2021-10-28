class DndClass < ApplicationRecord
    has_many :class_spells, dependent: :destroy
    has_many :spells, through: :class_spells
end
