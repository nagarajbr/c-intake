class RemoveColumnFromProviderServicesTable3 < ActiveRecord::Migration[5.2]
  def change
  	remove_column :provider_services, :local_office_id
  end
end
