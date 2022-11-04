class User < ApplicationRecord
  validates :name, presence: true
  validates :email, uniqueness: true, presence: true 
  before_validation { email.downcase! }
  has_secure_password
  has_many :blogs
end
