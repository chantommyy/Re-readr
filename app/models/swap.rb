class Swap < ApplicationRecord
  belongs_to :request
  belongs_to :book
  validates :request, uniqueness: true
end
