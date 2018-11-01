class CreateUserInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :user_informations do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :birthday	
      t.string :gender
      t.integer :child_count
      t.boolean :childrens	

      t.timestamps
    end
  end
end
