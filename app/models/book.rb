class Book < ApplicationRecord
  belongs_to :user
  has_many :swaps
  has_many :requests
  has_many :reviews

  # validates :genre, presence: true
  validates :isbn, presence: true
  validates :name, presence: true
  validates :author, presence: true
  validates :photo, presence: true
end
