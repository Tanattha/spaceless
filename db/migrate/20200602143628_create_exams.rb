class CreateExams < ActiveRecord::Migration[5.1]
  def change
    create_table :exams do |t| 
      t.string :title
      t.integer :course_id
      t.boolean :status, :default => 0
      t.timestamps
    end
  end
end
