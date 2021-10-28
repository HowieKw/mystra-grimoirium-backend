class ClassSpell < ApplicationRecord
  belongs_to :spell
  belongs_to :dnd_class
end
