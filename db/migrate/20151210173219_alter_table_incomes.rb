class AlterTableIncomes < ActiveRecord::Migration[5.2]
  def up
  	add_column :incomes, :employment_id, :integer
  	add_column :income_details, :employment_detail_id, :integer
  end
  def down
  	remove_column :incomes, :employment_id
  	remove_column :income_details, :employment_detail_id
  end
end
