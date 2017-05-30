class ChangeIntegerToDecimalInMultipliersTable < ActiveRecord::Migration[5.0]
  def change
    change_column :multipliers, :multiplication, :decimal
  end
end
