class AddColumnToSitters < ActiveRecord::Migration[5.0]
  def change
  	add_column :sitters, :pets_accepted, :string
  end
end
