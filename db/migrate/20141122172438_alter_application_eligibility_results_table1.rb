class AlterApplicationEligibilityResultsTable1 < ActiveRecord::Migration[5.2]
  def change
  	change_column :application_eligibility_results, :data_item_type, 'integer USING CAST(data_item_type AS integer)'
  end
end
