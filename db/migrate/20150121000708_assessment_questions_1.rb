class AssessmentQuestions1 < ActiveRecord::Migration[5.2]
  def change
  	rename_column :assessment_questions, :enbled, :enabled
  end
end
