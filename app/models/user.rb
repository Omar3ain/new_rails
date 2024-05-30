class User < ApplicationRecord
  validates :name, presence: true
  validates :dob, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }, uniqueness: true
  validates :phone_number, presence: true
end
