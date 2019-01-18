class AlterProgramWizardsAddField < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_wizards, :selected_for_planning, "char(1)"
  end
end
