class AlterClientApplicationsServiceProgramGroupNullable < ActiveRecord::Migration[5.2]
  def change
  		  	change_column :client_applications, :service_program_group, :integer, null:true
  end
end
