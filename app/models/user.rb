class User < ActiveRecord::Base
    has_secure_password
    belongs_to :course
    has_many :assignments, through: :courses
    has_many :user_assignments
    has_many :posts 
    has_many :exams, through: :courses
    has_many :user_exams
    
    validates :username, uniqueness: true
    
end


