class AlterServiceAuthorizations2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorizations, :supportive_service_flag, "char(1)"
  end
end
