class Trackr < ApplicationRecord
  belongs_to :yeast
  belongs_to :color
  belongs_to :taste
  has_many :trackr_textures
  has_many :textures, through: :trackr_textures

  has_many :trackr_flavours
  has_many :flavours, through: :trackr_flavours
  validates :level_min, :level_max, presence: true

  # Validation personnalisée pour s'assurer que level_max > level_min
  validate :max_level_greater_than_min_level

  private

  def max_level_greater_than_min_level
    if level_max.present? && level_min.present? && level_max <= level_min
      errors.add(:level_max, "doit être supérieur à level_min")
    end
  end

end
