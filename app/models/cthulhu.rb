class Cthulhu < ApplicationRecord
  belongs_to :user
  has_one :coc_skill
  has_one_attached :image
end
