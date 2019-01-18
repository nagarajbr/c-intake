class UpdateOnInStatePaymentsClientId < ActiveRecord::Migration[5.2]
  def change
  	change_column :in_state_payments, :client_id, :integer, null:true
  end
end
