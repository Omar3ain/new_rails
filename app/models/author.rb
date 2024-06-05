class Author < ApplicationRecord
    has_one :creator, class_name: 'User', foreign_key: 'author_id', dependent: :destroy
    has_many :posts, dependent: :destroy
  
end
