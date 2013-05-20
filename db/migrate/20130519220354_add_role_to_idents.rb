class AddRoleToIdents < ActiveRecord::Migration
  def change
    add_column :idents, :role, :string
  end
end
