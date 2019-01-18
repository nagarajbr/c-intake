class AlterTableApplicationServiceProgram < ActiveRecord::Migration[5.2]
  def up
  	 change_column :application_service_programs, :status, 'integer USING CAST(status AS integer)'
  end
end
