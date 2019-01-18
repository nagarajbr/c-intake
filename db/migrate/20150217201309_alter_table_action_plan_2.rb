class AlterTableActionPlan2 < ActiveRecord::Migration[5.2]
  def change
  	change_column :action_plans, :household_id, :integer, null:true
  end
end
