class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :authorname
      t.text :edition
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
