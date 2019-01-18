class TblExpensesNotNullConstraints < ActiveRecord::Migration[5.2]
  def change
  		change_column :expenses, :effective_beg_date, :date, null:false
  end
end
