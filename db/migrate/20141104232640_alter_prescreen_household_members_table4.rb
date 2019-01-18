class AlterPrescreenHouseholdMembersTable4 < ActiveRecord::Migration[5.2]
  def up
  	add_column :prescreen_household_members, :pra_accept, :string, limit: 1
  end
end
