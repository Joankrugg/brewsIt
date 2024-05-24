class Spot < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: :name,
  using: {
    tsearch: { prefix: true }
  }
  belongs_to :type
  validates :name, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :type, presence: true
end
