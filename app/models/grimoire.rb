class Grimoire < ApplicationRecord
  belongs_to :user

  has_many :user_grimoires
  has_many :added_by_user, through: :user_grimoires, class_name: 'User'

  has_many :grimoire_spells
  has_many :spells, through: :grimoire_spells
end
