class AlterAssessmentBarrierCppSnapshots2 < ActiveRecord::Migration[5.2]
  def change
  	add_column :assessment_barrier_cpp_snapshots, :parent_primary_key_id, :integer
  end
end
