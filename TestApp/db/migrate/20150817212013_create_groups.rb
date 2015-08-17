class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :group_name
      t.integer :user_id, index: true
      t.timestamps
    end
  end
end
