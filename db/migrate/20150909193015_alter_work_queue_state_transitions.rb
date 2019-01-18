class AlterWorkQueueStateTransitions < ActiveRecord::Migration[5.2]
  def change
  		add_column :work_queue_state_transitions, :created_by, :integer
  end
end
