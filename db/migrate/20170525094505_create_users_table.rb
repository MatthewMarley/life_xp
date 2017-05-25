class CreateUsersTable < ActiveRecord::Migration[5.0]
  def change
    create_table :users_tables do |t|
      t.string :email
      t.string :username
      t.string :password_digest
      t.timestamps
    end
  end
end
