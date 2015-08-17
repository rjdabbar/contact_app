class CreateContactGroups < ActiveRecord::Migration
  def change
    create_table :contact_groups do |t|
      t.integer :group_id, index: true
      t.integer :contact_id, index: true
      t.timestamps
    end
  end
end
