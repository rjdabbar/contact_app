class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, unique: true, null: false
      t.string :email, unique: true, null: false
      t.integer :user_id

      t.timestamps
    end

    add_index :contacts, :user_id
  end
end
