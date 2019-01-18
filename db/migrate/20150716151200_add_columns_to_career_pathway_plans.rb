class AddColumnsToCareerPathwayPlans < ActiveRecord::Migration[5.2]
  def change
  	add_column :career_pathway_plans, :reason, :string
  	add_column :career_pathway_plans, :state, :integer
  end
end
