class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :vendor_name
      t.date :arrival_date
      t.boolean :access_frequency

      t.timestamps
    end
  end
end
