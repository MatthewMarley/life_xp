class RenameMultipliersTablesToMultipliers < ActiveRecord::Migration[5.0]
  def change
    rename_table :multipliers_tables, :multipliers
  end
end
