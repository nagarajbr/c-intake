class AlterProviderInvoicesAddProviderInvoice < ActiveRecord::Migration[5.2]
  def change
  	 add_column :provider_invoices, :provider_invoice, "varchar(255)"
  end
end
