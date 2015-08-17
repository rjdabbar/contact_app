class AddContraintsToTables < ActiveRecord::Migration
  def change
    add_index :contacts, [:name, :email], unique: true
    remove_index :contact_shares, [:user_id, :contact_id]
    add_index :users, :username
  end
end
