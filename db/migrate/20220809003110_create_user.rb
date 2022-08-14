class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :user_password
      t.string :user_role
      t.timestamps
    end
  end
end
