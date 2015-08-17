class UpdateNameForUsers < ActiveRecord::Migration
  def change
    remove_column :users, :name, :string
    add_column :users, :username, :string, unique: true
  end
end
