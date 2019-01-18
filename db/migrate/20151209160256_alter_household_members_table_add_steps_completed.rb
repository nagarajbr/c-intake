class AlterHouseholdMembersTableAddStepsCompleted < ActiveRecord::Migration[5.2]
  def change
  		add_column :household_members, :steps_completed, :string
  end
end
