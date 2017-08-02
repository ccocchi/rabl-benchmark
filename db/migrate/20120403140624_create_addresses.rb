class CreateAddresses < ActiveRecord::Migration[4.2]
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :street
      t.string :zipcode
      t.string :city
    end
  end
end
