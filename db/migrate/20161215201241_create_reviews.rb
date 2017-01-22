class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.string :user_name
      t.integer :sitter_id
      t.string :sitter_name
      t.text :review

      t.timestamps
    end
  end
end
