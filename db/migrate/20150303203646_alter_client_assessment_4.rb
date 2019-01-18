class AlterClientAssessment4 < ActiveRecord::Migration[5.2]
  def change
  	add_column :client_assessments, :review_date,"date"
  end
end
