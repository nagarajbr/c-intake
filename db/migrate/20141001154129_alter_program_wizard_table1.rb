class AlterProgramWizardTable1 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_wizards, :submit_date, :date
  end
end
