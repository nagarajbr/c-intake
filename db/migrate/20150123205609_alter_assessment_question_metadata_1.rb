class AlterAssessmentQuestionMetadata1 < ActiveRecord::Migration[5.2]
  def change
  	rename_column :assessment_question_metadata, :response__min_lngth, :response_min_lngth
  	rename_column :assessment_question_metadata, :response__max_lngth, :response_max_lngth
  end
end
