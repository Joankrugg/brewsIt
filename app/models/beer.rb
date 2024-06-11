class Beer < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: [:name],
      associated_against: {
      style: [:name],
      color: [:name],
      yeast: [:name],
      taste: [:name]
    },
  using: {
    tsearch: { prefix: true }
  }
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
  has_many :places
end
