class AlterTableServiceAuthorizations1 < ActiveRecord::Migration[5.2]
  def up
  	 add_column :service_authorizations, :status, :integer
  end
end
