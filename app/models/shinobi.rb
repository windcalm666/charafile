class Shinobi < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :name
    validates :school_id, numericality: { other_than: 0, message: "Select" }
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shinobi_school
  belongs_to :type
end
