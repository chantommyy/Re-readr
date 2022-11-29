class Request < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_many :swaps
end
