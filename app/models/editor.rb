class Editor < ApplicationRecord
    has_many :editors_posts
    has_many :posts, through: :editors_posts
  end