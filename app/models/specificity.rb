class Specificity < ApplicationRecord
  belongs_to :spot

  validates :snack, :happy_hour, inclusion: { in: [true, false] }
  validates :cheapest_beer, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
  validates :draft_number, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true
end

