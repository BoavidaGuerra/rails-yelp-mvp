class Review < ApplicationRecord
  # A review must belong to a restaurant.
  belongs_to :restaurant
  # A review must have content and a rating.
  validates :rating, :content, presence: true
  # A reviews rating must be a number between 0 and 5.
  validates :rating, numericality: true
  # A reviews rating must be a number between 0 and 5.
  validates :rating, inclusion: { in: 0..5 }
end
