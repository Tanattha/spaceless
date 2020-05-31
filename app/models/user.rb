class User < ActiveRecord::Base
    has_secure_password
    belongs_to :course
    has_many :user_assignments
    has_many :assignments, through: :courses
    has_many :posts 
    
    validates :username, uniqueness: true
    
end


