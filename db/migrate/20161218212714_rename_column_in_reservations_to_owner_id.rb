class RenameColumnInReservationsToOwnerId < ActiveRecord::Migration[5.0]
  def change
  	rename_column :reservations, :user_id, :owner_id
  end
end
