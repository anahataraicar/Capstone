class RemoveIdColumn < ActiveRecord::Migration[5.0]
  def change
  	remove_column :reservations, :reservation_id, :integer
  	remove_column :pets, :pet_id, :integer
  	remove_column :owners, :owner_id, :integer
  	remove_column :sitters, :sitter_id, :integer
  end
end
