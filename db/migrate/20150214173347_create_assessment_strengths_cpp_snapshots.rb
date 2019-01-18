class CreateAssessmentStrengthsCppSnapshots < ActiveRecord::Migration[5.2]
  def change
    create_table :assessment_strengths_cpp_snapshots do |t|
    	 t.integer :career_pathway_plan_id, null:false
    	 t.integer :client_assessment_id, null:false
    	 t.integer :assessment_sub_section_id
    	 t.text :comments
    	 t.integer :display_order
    	 t.integer :assessment_strength_created_by
    	 t.integer :assessment_strength_updated_by
    	 t.timestamp :assessment_strength_created_at
    	 t.timestamp :assessment_strength_updated_at
    	 t.integer :created_by, null:false
      	 t.integer :updated_by, null:false
      t.timestamps
    end
  end
end

