class AlterClientApplicationsAddIntakeWorkerField < ActiveRecord::Migration[5.2]
  def change
  	add_column :client_applications, :intake_worker_id, :integer
  end
end
