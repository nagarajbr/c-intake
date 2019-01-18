class AlterPaymentLineItemsAddPguId < ActiveRecord::Migration[5.2]
  def change
  	add_column :payment_line_items, :program_unit_id, :integer
  end
end
