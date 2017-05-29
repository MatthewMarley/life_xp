class RenameDailyTablesToDailys < ActiveRecord::Migration[5.0]
  def change
    rename_table :daily_tables, :dailys
  end
end
