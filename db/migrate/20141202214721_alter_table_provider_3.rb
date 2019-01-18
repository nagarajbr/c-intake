class AlterTableProvider3 < ActiveRecord::Migration[5.2]
  def up
  	remove_column :providers, :provider_phone_number
  	remove_column :providers, :provider_phone_extension
  end
end
