class Swap < ApplicationRecord
  belongs_to :request
  belongs_to :book
  belongs_to :user
  validates :request, uniqueness: true
end
