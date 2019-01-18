class AlterTableProgramMonthSummaryTable1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_month_summaries, :program_unit_size, :integer
  end
end
