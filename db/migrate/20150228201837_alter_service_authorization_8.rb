class AlterServiceAuthorization8 < ActiveRecord::Migration[5.2]
  def change
  	remove_column :service_authorizations, :activity_service_id
  end
end
