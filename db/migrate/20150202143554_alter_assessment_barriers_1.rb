class AlterAssessmentBarriers1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :assessment_barriers, :assessment_section_id, :integer

  end
end
