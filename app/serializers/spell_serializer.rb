class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :school, :components, :material, :ritual, :casting_time, :concentration, :duration, :range_area, :attack_save, :class, :description
end
