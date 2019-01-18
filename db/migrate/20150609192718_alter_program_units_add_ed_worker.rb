class AlterProgramUnitsAddEdWorker < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_units, :eligibility_worker_id, :integer
  end
end
