class AlterTablePaymentLineItems2 < ActiveRecord::Migration[5.2]
  def up
  	add_column :payment_line_items, :paid_date, :date
  end
end
