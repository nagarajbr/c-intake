class TblClientImmunizationsRefIntegrity < ActiveRecord::Migration[5.2]
  def change
  	change_column :client_immunizations, :immunizations_record, "char(1)"

  		execute <<-SQL
    		ALTER TABLE client_immunizations
			ADD CONSTRAINT client_immunization_client_id_fkey
		    FOREIGN KEY (client_id)
		    REFERENCES clients(id);
        SQL
  end
end
