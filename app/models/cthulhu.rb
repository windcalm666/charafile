class Cthulhu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :job
    validates :age
    validates :sex
    validates :str
    validates :con
    validates :pow
    validates :dex
    validates :siz
    validates :edu
    validates :int
    validates :app
    validates :san
    validates :luck
    validates :idea
    validates :knowledge
    validates :magick_points
    validates :damage_bonus
    validates :life_points
    validates :user_id
  end
  
end
