class Review < ApplicationRecord
  belongs_to :restaurant

  RATE = (0..5)
  validates :content, presence: true
  validates :rating, inclusion: { in: RATE }, numericality: { only_interger: true }
end
