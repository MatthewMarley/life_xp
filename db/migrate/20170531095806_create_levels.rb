class CreateLevels < ActiveRecord::Migration[5.0]
  def change
    create_table :levels do |t|
      t.integer :game_id
      t.string :level
      t.decimal :points
    end
  end
end
