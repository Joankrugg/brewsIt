class Trackr < ApplicationRecord
  belongs_to :yeast
  belongs_to :color
  belongs_to :taste
  has_many :trackr_textures
  has_many :textures, through: :trackr_textures

  has_many :trackr_flavours
  has_many :flavours, through: :trackr_flavours
  validates :level_min, :level_max, presence: true

end
