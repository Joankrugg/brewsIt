class Spot < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: :city,
  associated_against: {
  type: [:name]
  },
  using: {
    tsearch: { prefix: true }
  }
  belongs_to :type
  validates :name, presence: true
  validates :city, presence: true

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  private

  def location
    "#{name}, #{city}"
  end

  def location_changed?
    name_changed? || city_changed?
  end

  def geocode
    Rails.logger.info "Geocoding for Spot ID #{id}: #{location}"
    super
    Rails.logger.info "Result for Spot ID #{id}: latitude #{latitude}, longitude #{longitude}"
  end
end
