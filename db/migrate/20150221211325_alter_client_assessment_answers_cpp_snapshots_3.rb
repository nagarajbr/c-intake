class AlterClientAssessmentAnswersCppSnapshots3 < ActiveRecord::Migration[5.2]
  def change
  	add_column :client_assessment_answers_cpp_snapshots, :parent_primary_key_id, :integer
  end
end
