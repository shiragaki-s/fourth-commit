class User < ApplicationRecord
 validates :name, presence: true
 validates :email, presence: true
 
 has_secure_password
 validates :password, presence: true, length: { minimum: 8, maximum: 32}
 validates :name, presence: true, length: { maximum: 15}
 VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i
VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :password, format: { with: VALID_PASSWORD_REGEX }
validates :email, format: { with: VALID_EMAIL_REGEX }

has_many :topics
end
