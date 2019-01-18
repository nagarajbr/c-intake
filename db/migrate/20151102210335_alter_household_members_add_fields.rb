class AlterHouseholdMembersAddFields < ActiveRecord::Migration[5.2]
  def change
  		add_column :household_members, :state, :integer
  		add_column :household_members, :current_step_url, :string
  end
end
