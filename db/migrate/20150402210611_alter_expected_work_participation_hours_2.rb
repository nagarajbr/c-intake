class AlterExpectedWorkParticipationHours2 < ActiveRecord::Migration[5.2]
  def change
  	 add_column :expected_work_participation_hours, :workpays_min_employment_hours, :integer
  end
end
