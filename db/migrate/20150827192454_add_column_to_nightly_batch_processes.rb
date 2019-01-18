class AddColumnToNightlyBatchProcesses < ActiveRecord::Migration[5.2]
  def change
  	add_column :nightly_batch_processes, :client_id, :integer
  end
end
