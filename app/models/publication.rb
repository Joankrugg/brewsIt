class Publication < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name, against: [:title],
  using: {
    tsearch: { prefix: true }
  }
  has_one_attached :photo
  validates :title, presence: true
  validates :content, presence: true
  validates :link, presence: true
end
