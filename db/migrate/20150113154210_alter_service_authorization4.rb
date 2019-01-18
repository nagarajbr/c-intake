class AlterServiceAuthorization4 < ActiveRecord::Migration[5.2]
  def change
  	change_column :service_authorizations, :provider_id,:integer,null:true
  end
end
