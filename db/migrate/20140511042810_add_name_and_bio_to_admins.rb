class AddNameAndBioToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :bio, :string
  end
end
