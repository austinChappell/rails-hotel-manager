class User < ApplicationRecord

  has_many :reservations
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :first_name,
    presence: true,
    length: { minimum: 3, maximum: 25 }
  validates :last_name,
    presence: true,
    length: { minimum: 3, maximum: 25 }
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: VALID_EMAIL_REGEX },
    length: { maximum: 105 }
  validates :gender,
    presence: true
  validates :dob,
    presence: true
  has_secure_password

end