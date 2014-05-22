class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :State, :string
    add_column :users, :City, :string
    add_column :users, :Phonenumber, :integer
  end
end
