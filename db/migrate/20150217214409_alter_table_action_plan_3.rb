class AlterTableActionPlan3 < ActiveRecord::Migration[5.2]
  def change
  	change_column :action_plans, :employment_readiness_plan_id, :integer, null:false
  end
end
