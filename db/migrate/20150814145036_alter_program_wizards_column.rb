class AlterProgramWizardsColumn < ActiveRecord::Migration[5.2]
  def change
  		change_column :program_wizards, :submit_date, :datetime
  end
end
