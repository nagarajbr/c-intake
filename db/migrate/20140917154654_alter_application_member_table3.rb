class AlterApplicationMemberTable3 < ActiveRecord::Migration[5.2]
  def up
  	rename_column :application_members, :self_of_budget, :primary_member
  end
end
