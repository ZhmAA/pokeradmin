class User < ApplicationRecord
  has_and_belongs_to_many :tables

  USER_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: USER_EMAIL_REGEX

end
