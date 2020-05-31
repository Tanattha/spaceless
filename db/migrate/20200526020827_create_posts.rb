class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t| 
      t.string :title
      t.string :content
      t.integer :user_id
      t.integer :course_id
      t.timestamps
    end
  end
end