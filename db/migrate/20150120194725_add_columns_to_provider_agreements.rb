class AddColumnsToProviderAgreements < ActiveRecord::Migration[5.2]
   def up
  	add_column :provider_agreements, :termination_reason, :string
  	add_column :provider_agreements, :termination_date, :date
  end

end
