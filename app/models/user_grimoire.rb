class UserGrimoire < ApplicationRecord
  belongs_to :grimoire
  belongs_to :user

  validates :grimoire_id, uniqueness: { scope: [:user_id], message: "can't add the same grimoire twice" }
end
