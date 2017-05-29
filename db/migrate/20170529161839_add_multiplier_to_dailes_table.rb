class AddMultiplierToDailesTable < ActiveRecord::Migration[5.0]
  def change
    add_column :dailies, :multiplier, :integer, :default => 1
  end
end
