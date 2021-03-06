class CreatePosts < ActiveRecord::Migration[4.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.text :content
      t.integer :comments_count
      t.integer :votes_count

      t.timestamps
    end
  end
end
