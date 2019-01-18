class AlterProviderAgreementsRejectionFields < ActiveRecord::Migration[5.2]
  def change
  		add_column :provider_agreements, :rejection_reason, :string
  		add_column :provider_agreements, :rejection_date, :date
  end
end
