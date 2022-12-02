class Review < ApplicationRecord
  belongs_to :user
  belongs_to :reviewee, class_name: "User"

  validates :rating, presence: true
  validates :comment, presence: true
end
