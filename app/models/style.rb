class Style < ApplicationRecord
  has_one_attached :photo
  belongs_to :yeast
  belongs_to :color
  belongs_to :taste
  has_many :style_flavours
  has_many :flavours, through: :style_flavours
  has_many :style_textures
  has_many :textures, through: :style_textures
end
