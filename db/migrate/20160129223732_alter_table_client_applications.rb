class AlterTableClientApplications < ActiveRecord::Migration[5.2]
  def change
  	add_column :client_applications, :application_processor , :integer
  end
end
