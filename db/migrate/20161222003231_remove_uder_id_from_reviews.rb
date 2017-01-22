class RemoveUderIdFromReviews < ActiveRecord::Migration[5.0]
  def change
  	remove_column :reviews, :user_id, :integer
  	remove_column :reviews, :user_name, :string
  end
end
