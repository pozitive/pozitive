class AddAdminIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :admin_id, :integer
  end
end
