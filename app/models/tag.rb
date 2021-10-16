class Tag < ApplicationRecord
    has_many :spelltags, dependent: :destroy
    has_many :spells, through: :spelltags
end
