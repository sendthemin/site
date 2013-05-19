class ReCreateGuests < ActiveRecord::Migration
 def change
    create_table :guests do |t|
      t.string :name
      t.references :ident
      t.boolean :permanent
      t.timestamps
    end
    add_index :guests, :ident_id
  end
end
