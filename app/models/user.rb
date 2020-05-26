class User < ActiveRecord::Base
    has_secure_password
    has_and_belongs_to_many :courses
    has_and_belongs_to_many :assignments, through: :courses 
    has_many :posts 

end