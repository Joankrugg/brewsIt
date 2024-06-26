class Texture < ApplicationRecord
  has_many :beer_textures
  has_many :beers, through: :beer_textures
  has_many :style_textures
  has_many :styles, through: :style_textures
  has_many :trackr_textures
  has_many :trackrs, through: :trackr_textures
end
