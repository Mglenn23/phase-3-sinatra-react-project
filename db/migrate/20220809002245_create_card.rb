class CreateCard < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :card_name
      t.string :card_attack
      t.string :card_defense
      t.integer :type_id
      t.integer :user_id
      t.timestamps
    end
  end
end
