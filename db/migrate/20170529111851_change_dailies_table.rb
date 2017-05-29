class ChangeDailiesTable < ActiveRecord::Migration[5.0]
  def change
    add_column :dailies, :user_id, :integer
  end
end
