class AlterClientApplicationTable6 < ActiveRecord::Migration[5.2]
  def up
  	remove_column :client_applications, :client_id

  end
end
