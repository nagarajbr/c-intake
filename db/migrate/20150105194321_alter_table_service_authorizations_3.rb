class AlterTableServiceAuthorizations3 < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorizations, :service_type, :integer
  end
end
