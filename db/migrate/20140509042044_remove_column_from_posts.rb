class RemoveColumnFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :state, :string
    remove_column :posts, :city, :string
    remove_column :posts, :phonenumber, :integer
  end
end
