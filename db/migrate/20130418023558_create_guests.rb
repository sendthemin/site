class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :guest_name
      t.date :arrival_date
      t.boolean :stay_length
      t.date :departure_date

      t.timestamps
    end
  end
end
