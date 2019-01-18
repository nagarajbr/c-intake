class ClientSsnUnique < ActiveRecord::Migration[5.2]
  def change
  	 execute <<-SQL
  		ALTER TABLE clients
		ADD CONSTRAINT clients_ssn_unique UNIQUE (ssn);
	SQL
  end
end
