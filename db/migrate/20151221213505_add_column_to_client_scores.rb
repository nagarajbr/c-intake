class AddColumnToClientScores < ActiveRecord::Migration[5.2]
  def up
  	add_column :client_scores, :client_assessment_id, :integer
  end
end
