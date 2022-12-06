class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewee, class_name: "User"

  validates :rating, presence: true, numericality: { in: 0..5 }
  validates :comment, presence: true
end
