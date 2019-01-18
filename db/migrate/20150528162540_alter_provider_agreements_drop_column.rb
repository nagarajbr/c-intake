class AlterProviderAgreementsDropColumn < ActiveRecord::Migration[5.2]
  def change
  	remove_column :provider_agreements, :rejection_date
  end
end
