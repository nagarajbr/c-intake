class AddCategoryToInStatePayments < ActiveRecord::Migration[5.2]
   def up
  	add_column :in_state_payments, :category, :string, limit: 2
  end
end
