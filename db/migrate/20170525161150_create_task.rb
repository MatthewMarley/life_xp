class CreateTask < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :name
      t.integer :points
      t.timestamps
    end
  end
end
