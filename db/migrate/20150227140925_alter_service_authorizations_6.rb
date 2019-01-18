class AlterServiceAuthorizations6 < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorizations, :notes, "text"
  end
end
