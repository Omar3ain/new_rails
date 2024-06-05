class User < ApplicationRecord
    has_one :author, dependent: :destroy
    has_one :creator, dependent: :destroy
    has_many :posts, through: :creator, dependent: :destroy
end
