class AlterTableProvider6 < ActiveRecord::Migration[5.2]
  def up
  	add_column :providers, :head_office_provider_id, :integer
  end
end
