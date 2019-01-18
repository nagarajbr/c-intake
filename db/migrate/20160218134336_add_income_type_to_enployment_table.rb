class AddIncomeTypeToEnploymentTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :employments, :income_type, :integer
  end
end
