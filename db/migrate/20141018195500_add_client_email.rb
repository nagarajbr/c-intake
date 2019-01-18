class AddClientEmail < ActiveRecord::Migration[5.2]
  def up
  	add_column :clients, :client_email, :string
  end
end
