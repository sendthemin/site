class AddOccupiedToUnits < ActiveRecord::Migration
  def change
    add_column :units, :occupied, :boolean
  end
end
