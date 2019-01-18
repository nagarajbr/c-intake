class AlterEventToActionsMappingsAddEnableFlag < ActiveRecord::Migration[5.2]
  def change
  	add_column :event_to_actions_mappings, :enable_flag, :string, limit: 1
  end
end
