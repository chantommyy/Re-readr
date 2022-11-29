class Book < ApplicationRecord
  belongs_to :user
  has_many :swaps
  has_many :requests
end
