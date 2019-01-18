class TblPregnanciesRefIntegrity < ActiveRecord::Migration[5.2]
  def change
  	execute <<-SQL
    	ALTER TABLE pregnancies
		ADD CONSTRAINT pregnancies_clients_id_fkey
		    FOREIGN KEY (client_id)
		    REFERENCES clients(id);
     SQL
  end
end
