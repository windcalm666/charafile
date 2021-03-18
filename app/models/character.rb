class Character < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :system_id, numericality: { other_than: 0 }
    validates :image
  end

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :system
end
