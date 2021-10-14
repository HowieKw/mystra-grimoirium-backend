class User < ApplicationRecord
    has_many :grimoires

    has_many :user_grimoires
    has_many :added_grimoires, through: :user_grimoires, class_name: 'Grimoire'
end
