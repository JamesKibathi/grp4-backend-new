class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      #Comment ''
      #New change
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :user_name
      t.string :password
    end 
  end
end
