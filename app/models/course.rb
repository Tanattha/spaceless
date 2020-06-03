class Course < ActiveRecord::Base
    has_many :users
    has_many :assignments
    has_many :posts
    has_many :exams
end
