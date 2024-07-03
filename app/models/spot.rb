class Spot < ApplicationRecord
  belongs_to :type
  has_one :specificity, dependent: :destroy
  accepts_nested_attributes_for :specificity

  validates :name, :city, presence: true

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  include PgSearch::Model

  pg_search_scope :search_by_keywords,
    against: [:name], # Add other text fields if necessary
    associated_against: {
      specificity: [:cheapest_beer, :draft_number]
    },
    using: {
      tsearch: { prefix: true }
    }

  private

  def location
    "#{name}, #{city}"
  end

  def location_changed?
    will_save_change_to_name? || will_save_change_to_city?
  end
end
