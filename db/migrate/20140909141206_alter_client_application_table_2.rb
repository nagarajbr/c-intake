class AlterClientApplicationTable2 < ActiveRecord::Migration[5.2]
  def up
  	remove_column :client_applications, :wizard_step
  end
end
