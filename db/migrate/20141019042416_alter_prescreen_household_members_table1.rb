class AlterPrescreenHouseholdMembersTable1 < ActiveRecord::Migration[5.2]
  def up
  	add_column :prescreen_household_members, :relation_to_primary_member, :integer
  end
end
