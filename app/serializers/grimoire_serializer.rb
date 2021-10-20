class GrimoireSerializer < ActiveModel::Serializer
  attributes :id, :title, :image
  has_one :user
  has_many :added_spells
  has_many :grimoire_spells
end
