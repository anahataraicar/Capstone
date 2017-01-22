class AddReservationIdToSitter < ActiveRecord::Migration[5.0]
  def change
  	add_column :sitters, :reservation_id, :integer
  end
end
