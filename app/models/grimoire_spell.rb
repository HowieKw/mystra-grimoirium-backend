class GrimoireSpell < ApplicationRecord
  belongs_to :grimoire
  belongs_to :spell

  validates :grimoire_id, uniqueness: { scope: [:spell_id], message: "can't add the same spell twice" }
end
