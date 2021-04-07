class Cthulhu < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :job
    validates :sex
    validates :damage_bonus
  end

  with_options presence: true, numericality: {integer_only: true} do
    validates :age
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
    validates :life_points
  end
  
end
