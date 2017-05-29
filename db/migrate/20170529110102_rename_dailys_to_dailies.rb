class RenameDailysToDailies < ActiveRecord::Migration[5.0]
  def change
    rename_table :dailys, :dailies
  end
end
