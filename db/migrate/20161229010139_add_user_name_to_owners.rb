class AddUserNameToOwners < ActiveRecord::Migration[5.0]
  def change
    add_column :owners, :username, :string
  end
end
