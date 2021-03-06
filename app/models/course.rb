class Course < ApplicationRecord
  validates :short_name, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 50 }
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  validates :description, presence: true
  has_many :user_courses
  has_many :users, through: :user_courses
end
