class AlterTableProvider1 < ActiveRecord::Migration[5.2]
  def up
  	change_column :providers, :notes,:text
  end
end
