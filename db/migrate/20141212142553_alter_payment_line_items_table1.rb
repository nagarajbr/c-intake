class AlterPaymentLineItemsTable1 < ActiveRecord::Migration[5.2]
  def up
  	add_column :payment_line_items, :aasis_warrant_number, :string
  end
end
