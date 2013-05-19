class ReCreateVisits < ActiveRecord::Migration
 def change
    create_table :visits do |t|
      t.datetime :checkin
      t.integer :duration
      t.references :guest
      t.references :ident
      t.references :unit

      t.timestamps
    end
    add_index :visits, :guest_id
    add_index :visits, :ident_id
    add_index :visits, :unit_id
  end
end
