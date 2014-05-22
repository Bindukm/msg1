class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :feedback
      t.references :post, index: true

      t.timestamps
    end
  end
end
