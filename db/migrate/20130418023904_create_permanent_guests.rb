class CreatePermanentGuests < ActiveRecord::Migration
  def change
    create_table :permanent_guests do |t|
      t.string :permanent_guest_name

      t.timestamps
    end
  end
end
