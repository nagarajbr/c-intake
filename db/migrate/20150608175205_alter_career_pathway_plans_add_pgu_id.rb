class AlterCareerPathwayPlansAddPguId < ActiveRecord::Migration[5.2]
  def change
  	 add_column :career_pathway_plans, :program_unit_id, :integer
  end
end
