class CreateUserExams < ActiveRecord::Migration[5.1]
  create_table :user_exams do |t| 
    t.integer :exam_id
    t.integer :user_id
    t.boolean :status, :default => 0
    t.integer :point, :default => 0
    t.timestamps
  end
end
