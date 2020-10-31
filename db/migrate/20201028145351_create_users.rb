class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fname
      t.string :lname
      t.integer :age
      t.string :email
      t.string :password_digest
      t.text :bio

      t.timestamps
    end
  end
end
