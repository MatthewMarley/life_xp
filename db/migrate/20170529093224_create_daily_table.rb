class CreateDailyTable < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_tables do |t|
      t.integer :game_id
      t.date :date
      t.integer :points
      t.timestamps
    end
  end
end
