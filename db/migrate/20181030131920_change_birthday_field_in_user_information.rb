class ChangeBirthdayFieldInUserInformation < ActiveRecord::Migration[5.2]
  def change
  	change_column :user_informations, :birthday, :string
  end
end
