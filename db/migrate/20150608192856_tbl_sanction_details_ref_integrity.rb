class TblSanctionDetailsRefIntegrity < ActiveRecord::Migration[5.2]
  def change
	  	execute <<-SQL
	    	ALTER TABLE sanction_details
			ADD CONSTRAINT sanction_details_sanction_id_fkey
			    FOREIGN KEY (sanction_id)
			    REFERENCES sanctions(id);
	    SQL
	end
end
