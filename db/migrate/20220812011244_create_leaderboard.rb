class CreateLeaderboard < ActiveRecord::Migration[6.1]
  def change
    create_table :leaderboards do |t|
      t.string :user_name
      t.integer :total_win
      t.integer :total_lose
      t.integer :total_draw
      t.integer :user_id
      t.timestamps
    end
  end
end
