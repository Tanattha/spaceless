class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :detail
      t.integer :course_id
   end
  end
end