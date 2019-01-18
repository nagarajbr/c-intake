class ApplicationScreening < ActiveRecord::Migration[5.2]
  def change
  	create_table :application_screenings do |t|
      t.timestamps
    end
  end
end
