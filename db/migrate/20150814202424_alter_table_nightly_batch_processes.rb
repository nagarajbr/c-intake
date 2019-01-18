class AlterTableNightlyBatchProcesses < ActiveRecord::Migration[5.2]
  def change
  	add_column :nightly_batch_processes, :reason, :integer
  end
end
