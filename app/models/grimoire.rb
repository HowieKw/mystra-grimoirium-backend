class Grimoire < ApplicationRecord
  belongs_to :user

  has_many :user_grimoires
  has_many :added_by_user, through: :user_grimoires, source: :user

  has_many :grimoire_spells
  has_many :added_spells, through: :grimoire_spells, source: :spell

  validates :title, presence: true, uniqueness: true
end
