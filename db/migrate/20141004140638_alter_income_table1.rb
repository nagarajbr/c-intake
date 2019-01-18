class AlterIncomeTable1 < ActiveRecord::Migration[5.2]
  def up
  	change_column :incomes, :source, :string, limit: 50
  end
end
