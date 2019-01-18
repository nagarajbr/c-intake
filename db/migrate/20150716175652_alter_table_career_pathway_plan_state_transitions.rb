class AlterTableCareerPathwayPlanStateTransitions < ActiveRecord::Migration[5.2]
  def change
  	add_column :career_pathway_plan_state_transitions, :created_by, :integer
  	add_column :career_pathway_plan_state_transitions, :reason, :string
  end
end
