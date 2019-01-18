class AddColumnToAddress < ActiveRecord::Migration[5.2]
  def change
   	add_column :addresses, :address_chgd, :string ,limit:1
   	rename_column :clients, :name_change, :name_chgd
 end
end
