class CreateApplicationcomments < ActiveRecord::Migration
  def change
    create_table :applicationcomments do |t|
      t.string :comment
      t.integer :feedback_id

      t.timestamps
    end
  end
end
