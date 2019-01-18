class AddColumnToProviderServiceAreasTable3 < ActiveRecord::Migration[5.2]
  def up
  	add_column :provider_service_areas, :local_office_id , :integer, null:false
  end
end
