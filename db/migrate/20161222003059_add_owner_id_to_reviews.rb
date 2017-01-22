class AddOwnerIdToReviews < ActiveRecord::Migration[5.0]
  def change
  	add_column :reviews, :owner_id, :integer
  	add_column :reviews, :owner_name, :string
  end
end
