class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :age
      t.integer :posts_count
      t.string :picture

      t.timestamps
    end
  end
end
