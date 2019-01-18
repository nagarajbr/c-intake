class AlterServiceAuthorizations5 < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorizations, :barrier_id, "integer"
  end
end
