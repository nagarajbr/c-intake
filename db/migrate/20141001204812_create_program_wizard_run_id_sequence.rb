class CreateProgramWizardRunIdSequence < ActiveRecord::Migration[5.2]
  def up
    execute "CREATE SEQUENCE program_wizard_run_id_seq"
  end
end
