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
  def points_in_common(trackr)
    points = 0
    points += 1 if self.level_min >= trackr.level_min
    points += 1 if self.level_max <= trackr.level_max
    points += 1 if self.yeast_id == trackr.yeast_id
    points += 1 if self.color_id == trackr.color_id
    points += 1 if self.taste_id == trackr.taste_id
    points += 1 if (self.texture_ids & trackr.texture_ids).any?
    points += 1 if (self.flavour_ids & trackr.flavour_ids).any?
    points
  end

  def self.with_minimum_points(trackr, minimum_points)
    Style.all.select { |style| style.points_in_common(trackr) >= minimum_points }
  end
end
