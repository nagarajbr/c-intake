class TblScheduleExtensionsRefIntegrity < ActiveRecord::Migration[5.2]
  def change
  	execute <<-SQL
    	ALTER TABLE schedule_extensions
		ADD CONSTRAINT schedule_extensions_schedule_id_fkey
		    FOREIGN KEY (schedule_id)
		    REFERENCES schedules(id);
     SQL
  end
end
