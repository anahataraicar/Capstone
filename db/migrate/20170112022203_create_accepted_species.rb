class CreateAcceptedSpecies < ActiveRecord::Migration[5.0]
  def change
    create_table :accepted_species do |t|
      t.integer :sitter_id
      t.integer :specie_id

      t.timestamps
    end
  end
end
