class Style < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: :name,
  using: {
    tsearch: { prefix: true }
  }
  has_one_attached :photo
  belongs_to :yeast
  belongs_to :color
  belongs_to :taste
  has_many :style_flavours
  has_many :flavours, through: :style_flavours
  has_many :style_textures
  has_many :textures, through: :style_textures
end
