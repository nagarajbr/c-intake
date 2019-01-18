class AlterHouseholdMemberStepStatusesAddStepName < ActiveRecord::Migration[5.2]
  def change
  	add_column :household_member_step_statuses, :step_name, :string
  end
end
