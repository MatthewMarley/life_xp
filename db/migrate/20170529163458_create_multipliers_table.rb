class CreateMultipliersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :multipliers_tables do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :multiplication
      t.string :description
    end
  end
end
