class AddNewColumnToProviderAgreements < ActiveRecord::Migration[5.2]
  def change
  	add_column :provider_agreements, :agreement_reviewer_id, :string
  end
end
