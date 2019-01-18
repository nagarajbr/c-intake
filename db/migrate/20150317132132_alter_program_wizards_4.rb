class AlterProgramWizards4 < ActiveRecord::Migration[5.2]
  def change
  	add_column :program_wizards, :case_type, :integer
  end
end
