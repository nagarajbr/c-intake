class AlterApplicationMemberTable2 < ActiveRecord::Migration[5.2]
  def up
  		add_column :application_members, :self_of_budget, :string,limit: 1
  end
end
