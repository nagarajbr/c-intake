class AlterHouseholdMembersAddImmunizationFlag < ActiveRecord::Migration[5.2]
  def change
  		add_column :household_members, :immunization_charcteristics_found_add_flag, "char(1)"
  end
end
