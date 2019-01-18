class AlterWorkQueueStateTransitionsModifyReferenceId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :work_queue_state_transitions, :reference_type, :queue_reference_type
  	rename_column :work_queue_state_transitions, :reference_id, :queue_reference_id
  end
end
