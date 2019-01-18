class RenameScheduleExtensionsColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :schedule_extensions, :extended_duration, :extension_duration
  end
end
