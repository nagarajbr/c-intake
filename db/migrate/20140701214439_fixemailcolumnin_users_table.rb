class FixemailcolumninUsersTable < ActiveRecord::Migration[5.2]
  def up
  	 rename_column :users, :email, :email_id
  end

  def down
  	# rollback to what it was
  	rename_column :users, :email_id, :email
  end
end
