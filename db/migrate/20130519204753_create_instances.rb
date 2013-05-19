class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.references :unit
      t.references :user

      t.timestamps
    end
    add_index :instances, :unit_id
    add_index :instances, :user_id
  end
end
