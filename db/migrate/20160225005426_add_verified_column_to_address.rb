class AddVerifiedColumnToAddress < ActiveRecord::Migration[5.2]
  def change
  	add_column :addresses, :verified, :string ,limit:1
  end
end
