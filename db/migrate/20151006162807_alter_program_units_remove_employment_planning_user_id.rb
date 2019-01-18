class AlterProgramUnitsRemoveEmploymentPlanningUserId < ActiveRecord::Migration[5.2]
  def up
  	 remove_column :program_units, :employment_planning_user_id
  end

  def down
  	add_column :program_units, :employment_planning_user_id, :integer
  end
end
