class Grimoire < ApplicationRecord
  belongs_to :user

  has_many :spells
end