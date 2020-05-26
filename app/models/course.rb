class Course < ActiveRecord::Base
    has_many :users
    has_many :assignments
    has_many :posts
    belongs_to :school
end
