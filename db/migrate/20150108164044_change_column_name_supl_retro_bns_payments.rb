class ChangeColumnNameSuplRetroBnsPayments < ActiveRecord::Migration[5.2]
  def change
  	rename_column :supl_retro_bns_payments, :program_units_id, :program_unit_id
  end
end
