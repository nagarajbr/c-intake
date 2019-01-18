class AlterTableApplicationMembers1 < ActiveRecord::Migration[5.2]
  def up
  	remove_column :application_members, :primary_member_flag
  end
end
