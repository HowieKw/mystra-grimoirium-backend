class Spelltag < ApplicationRecord
  belongs_to :spell
  belongs_to :tag
end
