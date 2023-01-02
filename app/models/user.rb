class User < ApplicationRecord
  has_many :niches
  validates :email, presence: true, uniqueness: true
end
