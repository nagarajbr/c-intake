class TblEducationsRefIntegrity < ActiveRecord::Migration[5.2]
  def change
  	 execute <<-SQL
    	ALTER TABLE educations
		ADD CONSTRAINT educations_client_id_fkey
		    FOREIGN KEY (client_id)
		    REFERENCES clients(id);
     SQL
  end
end
