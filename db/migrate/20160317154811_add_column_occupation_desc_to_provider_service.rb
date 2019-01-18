class AddColumnOccupationDescToProviderService < ActiveRecord::Migration[5.2]
  def change
  	add_column :provider_services, :occupation_desc, "varchar(255)"
  end
end
