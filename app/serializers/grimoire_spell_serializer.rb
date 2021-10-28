class GrimoireSpellSerializer < ActiveModel::Serializer
  attributes :id
  has_one :grimoire
  has_one :spell
end
