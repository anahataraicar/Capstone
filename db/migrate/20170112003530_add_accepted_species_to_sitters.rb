class AddAcceptedSpeciesToSitters < ActiveRecord::Migration[5.0]
  def change
  	 add_column :sitters, :accepted_species, :string
  end
end
