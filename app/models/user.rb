class User < ApplicationRecord
    has_one :author, dependent: :destroy
end
