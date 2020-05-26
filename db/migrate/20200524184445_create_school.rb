class CreateSchool < ActiveRecord::Migration[5.1]
  def change
    create_table :school do |t| 
      t.integer :user_id
      t.integer :course_id
    end
  end
end