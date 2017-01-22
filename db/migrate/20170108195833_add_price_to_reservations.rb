class AddPriceToReservations < ActiveRecord::Migration[5.0]
  def change
  	 add_column :reservations, :price, :float
  	 add_column :reservations, :start_time, :string
  	 add_column :reservations, :end_time, :string
  	 add_column :reservations, :confirmed, :string
  end
end
