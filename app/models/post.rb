class Post < ApplicationRecord
  belongs_to :author
  belongs_to :creator
  has_and_belongs_to_many :editors

end
