class AlterClientApplicationTable7 < ActiveRecord::Migration[5.2]
  def up
  	remove_column :client_applications, :registered_date
  end
end
