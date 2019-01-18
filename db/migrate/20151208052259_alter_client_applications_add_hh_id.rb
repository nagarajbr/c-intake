class AlterClientApplicationsAddHhId < ActiveRecord::Migration[5.2]
  def change
  	add_column :client_applications, :household_id, :integer
  end
end
