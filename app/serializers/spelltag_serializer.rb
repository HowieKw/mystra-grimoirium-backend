class SpelltagSerializer < ActiveModel::Serializer
  attributes :id
  has_one :spell
  has_one :tag
end
