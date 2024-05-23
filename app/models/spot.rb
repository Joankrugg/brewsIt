class Spot < ApplicationRecord
  belongs_to :type
  validates :name, presence: true
  validates :city, presence: true
  validates :address, presence: true
  validates :type, presence: true
end
