class CreateUsers < ActiveRecord::Migration[7.1]
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  
end
