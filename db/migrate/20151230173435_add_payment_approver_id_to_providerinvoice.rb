class AddPaymentApproverIdToProviderinvoice < ActiveRecord::Migration[5.2]
  def change
  	add_column :provider_invoices, :payment_approver_id, :string
  end
end
