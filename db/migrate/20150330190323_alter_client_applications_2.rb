class AlterClientApplications2 < ActiveRecord::Migration[5.2]
  def change
  	 remove_column :client_applications, :application_processing_county
  end
end
