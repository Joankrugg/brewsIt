class Taste < ApplicationRecord
  has_many :beers
  has_many :styles
  has_many :trackrs
end
