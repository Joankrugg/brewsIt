class Beer < ApplicationRecord
  has_one_attached :photo
  validates :name, presence: :true, uniqueness: true
  validates :photo, presence: :true
  validates :level, presence: :true
  belongs_to :yeast
  belongs_to :color
  belongs_to :taste
  belongs_to :style
  has_many :beer_textures
  has_many :textures, through: :beer_textures
  has_many :beer_flavours
  has_many :flavours, through: :beer_flavours
end
