class AddColumnsToActionPlanDetails < ActiveRecord::Migration[5.2]
  def change
  	add_column :action_plan_details, :child_id, :integer
  	add_column :action_plan_details, :child_dob, :date
  end
end
