class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :school, :components, :ritual, :casting_time, :concentration, :duration, :range_area, :attack_save, :damage_effect, :description, :ani

  has_many :dnd_classes
  has_many :tags
end
