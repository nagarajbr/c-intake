class AddColumnToProviderInvoiceTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :provider_invoices, :service_authorization_id, :integer
  end
end
