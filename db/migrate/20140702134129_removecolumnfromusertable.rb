class Removecolumnfromusertable < ActiveRecord::Migration[5.2]
  def up
  	 remove_column :users, :role_id
  end

  def down
  	# rollback to what it was
  	add_column :users, :role_id, :integer
  end
end
