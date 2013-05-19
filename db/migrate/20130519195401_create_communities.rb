class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.references :customer
      t.string :website

      t.timestamps
    end
    add_index :communities, :customer_id
  end
end
