class ModifyPaymentReviewerId < ActiveRecord::Migration[5.2]
  def change
  	add_column :provider_invoices, :payment_reviewer_id, :string
  end
end
