class AlterTableTepcSsnClientidAnswer < ActiveRecord::Migration[5.2]
  def up
  	add_column :tepc_ssn_clientid_answer, :first_name, :string
  	add_column :tepc_ssn_clientid_answer, :last_name, :string
  	add_column :tepc_ssn_clientid_answer, :dob, :date
  end
end
