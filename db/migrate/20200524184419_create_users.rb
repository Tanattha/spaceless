class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t| 
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :course_id, :default => 0
      t.string :assignment_id, :default => 0
      t.boolean :assignment_status, :default => true
      t.timestamps
    end
  end
end
