class TblEmploymentsRefIntegrity < ActiveRecord::Migration[5.2]
  def change
  	 execute <<-SQL
    	ALTER TABLE employments
		ADD CONSTRAINT employments_client_id_fkey
		    FOREIGN KEY (client_id)
		    REFERENCES clients(id);
     SQL


  end
end
