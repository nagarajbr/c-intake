class AlterServiceAuthorizations7 < ActiveRecord::Migration[5.2]
  def change
  	add_column :service_authorizations, :client_agreement_date, "date"
  end
end
