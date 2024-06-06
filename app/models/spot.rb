class Spot < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: :name,
  using: {
    tsearch: { prefix: true }
  }
  belongs_to :type
  validates :name, presence: true, uniqueness: true
  validates :city, presence: true
  def location
    "#{name}, #{zipcode}, #{city}"
  end
  geocoded_by :location
  after_validation :geocode, if: ->(obj){ obj.location.present? and obj.city_changed? }
end
