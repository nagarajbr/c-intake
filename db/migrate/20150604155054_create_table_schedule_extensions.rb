class CreateTableScheduleExtensions < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_extensions do |t|
    	t.references :schedule, index: true, null: false
	    t.integer :extended_duration, null: false
	    t.string :extension_reason, null: false
	    t.integer :created_by , null:false
	    t.integer :updated_by , null:false
      	t.timestamps
    end
  end
end