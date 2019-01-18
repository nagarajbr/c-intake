class CreateApplicationEligibilityResults < ActiveRecord::Migration[5.2]
  def change
    create_table :application_eligibility_results do |t|
    	t.integer :application_id,null:false
    	t.integer :client_id,null:false
    	t.string :data_item_type,null:false
    	t.boolean :result,null:false
      	t.timestamps
    end
  end
end
