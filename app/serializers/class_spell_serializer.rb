class ClassSpellSerializer < ActiveModel::Serializer
  attributes :id
  has_one :spell
end
