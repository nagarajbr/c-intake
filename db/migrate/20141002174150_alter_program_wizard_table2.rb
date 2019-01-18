class AlterProgramWizardTable2 < ActiveRecord::Migration[5.2]
  def up
  	change_column :program_wizards, :retain_ind, :string, limit: 1

  end
end
