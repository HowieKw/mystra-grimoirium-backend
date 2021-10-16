class User < ApplicationRecord
    has_secure_password

    has_many :grimoires, dependent: :destroy

    has_many :user_grimoires
    has_many :added_grimoires, through: :user_grimoires, source: :grimoire

    validates :username, presence: true, uniqueness: true
end
