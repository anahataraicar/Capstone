class AddColumnToPets < ActiveRecord::Migration[5.0]
  def change
  	add_column :pets, :owner_id, :integer
  end
end
