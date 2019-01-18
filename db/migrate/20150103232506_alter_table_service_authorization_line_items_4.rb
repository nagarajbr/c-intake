class AlterTableServiceAuthorizationLineItems4 < ActiveRecord::Migration[5.2]
  def change
  	 change_column :service_authorization_line_items, :quantity, :decimal,precision: 8, scale: 2
  end
end
