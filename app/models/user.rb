class User < ApplicationRecord
      validates :name, :DOB, :email, :phone_number, presence: true
      validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
      validates :email, uniqueness: true
  end