class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|

    	t.text    :subject
    	t.text    :notes
        t.integer :created_by , null:false
	    t.integer :updated_by , null:false

      	t.timestamps
    end
  end
end
