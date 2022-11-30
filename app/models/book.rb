class Book < ApplicationRecord
  belongs_to :user
  has_many :swaps
  has_many :requests

  # validates :gnere, presence: true
  # validates :name, presence: true
  # validates :author, presence: true
  # validates :photo, presence: true
  # validates :condition, presence: true
end
