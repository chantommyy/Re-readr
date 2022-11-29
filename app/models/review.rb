class Review < ApplicationRecord
  belongs_to :user

  validates :rating, presence: true
  validates :comment, presence: true
end
