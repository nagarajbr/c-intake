class AlterTableServiceAuthorizationLineItems3 < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorization_line_items, :provider_invoice_id, :integer
  end
end
