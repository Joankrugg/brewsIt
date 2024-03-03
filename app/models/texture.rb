class Texture < ApplicationRecord
  has_many :beer_textures
  has_many :beers, through: :beer_textures
end
