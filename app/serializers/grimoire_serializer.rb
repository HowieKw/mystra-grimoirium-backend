class GrimoireSerializer < ActiveModel::Serializer
  attributes :id, :title, :image, :grimoire_spells_with_spell_ids
  has_one :user
  has_many :added_spells
  has_many :user_grimoires
  # has_many :grimoire_spells

  def grimoire_spells_with_spell_ids
    grim_spells = object.grimoire_spells
    grim_spells.map do | each_grim_spell |
      {
        grim_spell_id: each_grim_spell.id,
        assoc_spell: each_grim_spell.spell.id
      }
    end
  end
end
