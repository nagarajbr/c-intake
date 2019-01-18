class AlterEventToActionsMappingsQueueType < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_to_actions_mappings, :queue_type, :integer
  end
end
