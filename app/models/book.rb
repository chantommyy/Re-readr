class Book < ApplicationRecord
  belongs_to :user
  has_many :swaps
  has_many :requests
  has_many :reviews

  # validates :genre, presence: true
  # validates :barcode, presence: true
  # validates :barcode, length: { maximum: 13 }
  # validates :description, presence: true
  validates :name, presence: true
  validates :author, presence: true
  validates :photo, presence: true
end
