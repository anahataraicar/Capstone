class RenameColumnInReservations < ActiveRecord::Migration[5.0]
  def change
  	rename_column :reservations, :hostmessage, :host
  end
end
