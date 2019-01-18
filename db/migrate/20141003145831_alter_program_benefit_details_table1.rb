class AlterProgramBenefitDetailsTable1 < ActiveRecord::Migration[5.2]
  def up
  		add_column :program_benefit_details, :program_wizard_id, :integer
  end
end
