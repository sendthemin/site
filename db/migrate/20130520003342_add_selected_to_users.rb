class AddSelectedToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :selected, :string
  end
end
