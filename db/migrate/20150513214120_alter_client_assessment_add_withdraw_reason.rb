class AlterClientAssessmentAddWithdrawReason < ActiveRecord::Migration[5.2]
  def change
  	add_column :client_assessments, :withdraw_reason, :integer
  end
end
