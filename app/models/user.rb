class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence:true, uniqueness:true
    validates :phone, numericality: {only_integer: true, allow_nil:false}  
    validates :DOB, presence:true  
end
