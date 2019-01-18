class TblClientSkillsRefIntegrity < ActiveRecord::Migration[5.2]
  def change
	  	execute <<-SQL
	    	ALTER TABLE client_skills
			ADD CONSTRAINT client_skills_client_id_fkey
			    FOREIGN KEY (client_id)
			    REFERENCES clients(id);
	    SQL
	end
end
