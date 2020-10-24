class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :name, presence: true,
                   length: { minimum: 3, maximum: 25 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    length: { maximum: 105 },
                    format: { with: VALID_EMAIL_REGEX }
  has_many :user_courses
  has_many :courses, through: :user_courses
  has_secure_password
end
