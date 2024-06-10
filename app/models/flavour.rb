class Flavour < ApplicationRecord
  has_many :beer_flavours
  has_many :beers, through: :beer_flavours
  has_many :style_flavours
  has_many :styles, through: :style_flavours
  has_many :trackr_flavours
  has_many :trackrs, through: :trackr_flavours
end
