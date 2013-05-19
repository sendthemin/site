class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :billing_address
      t.string :website
      t.string :contact
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
