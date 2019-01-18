class AlterTableProvider5 < ActiveRecord::Migration[5.2]
  def change
  	change_column :providers, :tax_id_ssn, :string, limit: 9
  end
end
