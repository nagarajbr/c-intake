class AddClolumnToProviderServicesTable2 < ActiveRecord::Migration[5.2]
  def up
	add_column :provider_services, :local_office_id , :integer, null:false
  end
end
