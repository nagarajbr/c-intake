class AlterInStatePayments < ActiveRecord::Migration[5.2]
  def up
     remove_column :in_state_payments, :category
     add_column :in_state_payments, :service_program_id, :integer
 end
end
