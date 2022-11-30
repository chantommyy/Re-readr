class Book < ApplicationRecord
  belongs_to :user
  has_many :swaps
  has_many :requests
  has_many :reviews

<<<<<<< HEAD
  validates :genre, presence: true
  validates :name, presence: true
  validates :author, presence: true
  validates :photo, presence: true
=======
  # validates :genre, presence: true
  # validates :name, presence: true
  # validates :author, presence: true
  # validates :photo, presence: true
  # validates :condition, presence: true
>>>>>>> 49cc6422663b2be32ca7ab29875602ce342200b8
end
