class Place < ApplicationRecord
  belongs_to :beer
  geocoded_by :city
  after_validation :geocode, if: ->(obj){ obj.city.present? and obj.city_changed? }
end
