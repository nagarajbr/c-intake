class AlterProvidersAddFields < ActiveRecord::Migration[5.2]
  def change

  	add_column :providers, :provider_registered_office, :integer
  	add_column :providers, :intake_worker_id, :integer

  end
end
