class AlterHouseholdMembersAddRegistrationQuestionFlag < ActiveRecord::Migration[5.2]
  def change
  		add_column :household_members, :registration_questions_add_flag, "char(1)"
  end
end
