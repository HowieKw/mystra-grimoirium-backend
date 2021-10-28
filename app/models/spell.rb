class Spell < ApplicationRecord
  has_many :grimoire_spells
  has_many :grimoires, through: :grimoire_spells

  has_many :class_spells
  has_many :dnd_classes, through: :class_spells

  has_many :spelltags
  has_many :tags, through: :spelltags
end
