class RemoveColumnFromIncomeTable < ActiveRecord::Migration[5.2]
  def change
  	remove_column :incomes, :position_type
  end
end
