class UserGrimoireSerializer < ActiveModel::Serializer
  attributes :id
  has_one :grimoire
  has_one :user
end
