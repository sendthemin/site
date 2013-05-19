class CreateIdents < ActiveRecord::Migration
  def change
    create_table :idents do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :idents, :user_id
  end
end
