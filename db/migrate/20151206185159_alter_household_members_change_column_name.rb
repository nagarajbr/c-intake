class AlterHouseholdMembersChangeColumnName < ActiveRecord::Migration[5.2]
  def change
  	    rename_column :household_members, :mental_health_issues_charcteristics__found_add_flag, :mental_health_issues_charcteristics_found_add_flag
  end
end
