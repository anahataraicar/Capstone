class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.integer :pet_id
      t.string :name
      t.string :type
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
