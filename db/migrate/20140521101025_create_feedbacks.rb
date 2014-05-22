class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :feedback
      t.integer :applicationcommente_id

      t.timestamps
    end
  end
end
