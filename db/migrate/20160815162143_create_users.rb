class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :login
      t.string :password
      t.string :address
      t.integer :rating
      t.string :gender
      t.integer :age
      t.string :description
      t.string :status


      t.timestamps
    end
  end
end
