class Place < ApplicationRecord
  belongs_to :beer
  geocoded_by :city
  validates :name, presence: true
  after_validation :geocode, if: ->(obj){ obj.city.present? and obj.city_changed? }
end
