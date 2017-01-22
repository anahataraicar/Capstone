class CreateSitterPetTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :sitter_pet_types do |t|
      t.integer :pet_type_id
      t.integer :sitter_id

      t.timestamps
    end
  end
end
