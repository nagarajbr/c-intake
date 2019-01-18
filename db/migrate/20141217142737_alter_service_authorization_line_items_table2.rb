class AlterServiceAuthorizationLineItemsTable2 < ActiveRecord::Migration[5.2]
  def up
  	add_column :service_authorization_line_items, :actual_quantity, :integer
  end
end
