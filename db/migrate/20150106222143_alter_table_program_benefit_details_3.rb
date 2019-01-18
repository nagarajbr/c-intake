class AlterTableProgramBenefitDetails3 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_benefit_details, :reimbursed_amount, :decimal, precision: 8, scale: 2
  end
end
