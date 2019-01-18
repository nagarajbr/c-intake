class AlterPrescreenHouseholdMembersTable2 < ActiveRecord::Migration[5.2]
  def up
  	add_column :prescreen_household_members, :date_of_birth, :date
  	remove_column :prescreen_household_members, :age
  end
end
