class UserAssignment < ActiveRecord::Base
    belongs_to :user
    belongs_to :assignment
    belongs_to :course
end

