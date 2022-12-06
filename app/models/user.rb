class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books
  has_many :requests
  has_many :swaps
  has_many :requests_as_owner, through: :books, source: :requests
  has_many :swaps_as_owner, through: :books, source: :swaps
  has_one_attached :avatar
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
end
