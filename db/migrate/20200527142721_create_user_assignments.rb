class CreateUserAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :user_assignments do |t| 
      t.integer :assignment_id
      t.integer :user_id
      t.integer :course_id
      t.boolean :status, :default => 0
      t.string :note
      t.timestamps
    end
  end
end
