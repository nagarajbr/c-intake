class AlterProgramWizardReasons < ActiveRecord::Migration[5.2]
  def change
  	rename_column :program_wizard_reasons, :program_wizards_id, :program_wizard_id
  end
end
