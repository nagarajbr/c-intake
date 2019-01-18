class AlterTablePhones1 < ActiveRecord::Migration[5.2]
  def up
  	rename_column :phones, "number", :phone_number
  	remove_column :phones, :client_id
  end
end
