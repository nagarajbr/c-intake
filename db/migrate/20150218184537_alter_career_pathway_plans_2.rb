class AlterCareerPathwayPlans2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :career_pathway_plans, :update_communication_type, :integer
  end
end
