class AddPasswordColumnToSitters < ActiveRecord::Migration[5.0]
  def change
    add_column :sitters, :password_digest, :string
  end
end
