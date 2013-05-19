class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :address
      t.string :name
      t.references :community

      t.timestamps
    end
    add_index :units, :community_id
  end
end
