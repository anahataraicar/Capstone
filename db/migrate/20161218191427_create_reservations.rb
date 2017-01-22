class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :hostmessage
      t.integer :user_id
      t.integer :pet_id
      t.integer :sitter_id

      t.timestamps
    end
  end
end
