class ChangeColumnTypeForClientEmail < ActiveRecord::Migration[5.2]
  def change
  	change_column :client_emails, :created_by, :string
    change_column :client_emails, :updated_by, :string
  end
end
