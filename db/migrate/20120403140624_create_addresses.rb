class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :street
      t.string :zipcode
      t.string :city
    end
  end
end
