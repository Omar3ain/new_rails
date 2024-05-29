class User < ApplicationRecord
  validates :name, presence: true
  validates :DBO, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
  validates :phone_number, presence: true
end
