class User < ApplicationRecord
    validates :name, presence: true
    validates :DOB, presence: true
    validates :email, presence: true
    validates :phone_number, presence: true
end
