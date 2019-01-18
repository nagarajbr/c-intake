class AlterPrescreenHouseholdMembersAddFields < ActiveRecord::Migration[5.2]
  def change
  	add_column :prescreen_household_members, :disabled_flag, :string, limit: 1
  	add_column :prescreen_household_members, :veteran_flag, :string, limit: 1
  end
end


