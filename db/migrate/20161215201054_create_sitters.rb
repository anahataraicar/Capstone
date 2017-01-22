class CreateSitters < ActiveRecord::Migration[5.0]
  def change
    create_table :sitters do |t|
      t.integer :sitter_id
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone_number
      t.string :email
      t.text :bio

      t.timestamps
    end
  end
end
