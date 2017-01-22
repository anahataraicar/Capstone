class AddUserNameToSitters < ActiveRecord::Migration[5.0]
  def change
    add_column :sitters, :username, :string
  end
end
