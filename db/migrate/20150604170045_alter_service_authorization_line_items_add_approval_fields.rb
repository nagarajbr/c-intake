class AlterServiceAuthorizationLineItemsAddApprovalFields < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorization_line_items, :approved_by, :integer
	add_column :service_authorization_line_items, :approved_date, :datetime
  end
end
