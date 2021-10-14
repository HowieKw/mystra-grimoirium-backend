class UserGrimoire < ApplicationRecord
  belongs_to :grimoire
  belongs_to :user
end
