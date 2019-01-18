class AlterTableProviderAgreement < ActiveRecord::Migration[5.2]
  def up
  	add_column :provider_agreements, :status, :integer
  end
end
