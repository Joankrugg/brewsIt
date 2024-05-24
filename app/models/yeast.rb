class Yeast < ApplicationRecord
  has_many :beers
  has_many :styles
end
