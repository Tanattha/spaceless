class School < ActiveRecord::Base
    has_many :students, through: :courses
    has_many :courses
    
end