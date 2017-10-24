class User < ApplicationRecord
  has_secure_password

  has_many :projects
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :username, presence: true
  validates :email, presence: true, uniqueness: true, format: VALID_EMAIL_REGEX

  
end
