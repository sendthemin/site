class ReCreateIdents < ActiveRecord::Migration
  def change
    create_table :idents do |t|
      t.string :name
      t.references :user
      t.references :community

      t.timestamps
    end
    add_index :idents, :user_id
  	add_index :idents, :community_id
  end
end
