class AssessmentQuestions2 < ActiveRecord::Migration[5.2]
  def change
  	change_column :assessment_questions, :input_type_id, :integer,:null => true
  end
end
