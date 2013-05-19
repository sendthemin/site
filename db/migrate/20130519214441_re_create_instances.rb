class ReCreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.references :unit
      t.references :ident

      t.timestamps
    end
    add_index :instances, :unit_id
    add_index :instances, :ident_id
  end
end
