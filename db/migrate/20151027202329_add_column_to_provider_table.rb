class AddColumnToProviderTable < ActiveRecord::Migration[5.2]
  def change
  	add_column :providers, :fms_reviewer_id, :string
  end
end
