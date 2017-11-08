class Review < ApplicationRecord
  ACCEPTED_RATING = [0,1,2,3,4,5]
  belongs_to :restaurant

  validates :content, presence:true
  validates :rating, presence:true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: ACCEPTED_RATING }
end
