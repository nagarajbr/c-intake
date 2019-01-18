class CreateTepcSsnClientidAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :tepc_ssn_clientid_answer do |t|
    	t.integer :clientid
    	t.string  :ssn , limit: 9

      t.timestamps
    end
  end
end
