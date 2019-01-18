class AlterTableClientApplications1 < ActiveRecord::Migration[5.2]
  def change
  	change_column :client_applications, :application_processor, :string
  end
end
