class AlterTableProviderInvoice2 < ActiveRecord::Migration[5.2]
  def change
  	 remove_column :provider_invoices, :aasis_warrant
  	 remove_column :provider_invoices, :aasis_paid_date
  end
end
