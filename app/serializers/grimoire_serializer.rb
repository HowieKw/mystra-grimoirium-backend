class GrimoireSerializer < ActiveModel::Serializer
  attributes :id, :title, :edit, :image
  has_one :user
end
