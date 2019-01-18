class AddNewColumnToProviderService < ActiveRecord::Migration[5.2]
  def change
  	  add_column :provider_services, :occupation, "varchar(255)"
  end
end
