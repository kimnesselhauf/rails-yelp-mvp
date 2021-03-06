class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, nil: false
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }, numericality: true
  validates :restaurant_id, presence: true
end
