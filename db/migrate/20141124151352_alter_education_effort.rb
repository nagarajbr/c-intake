class AlterEducationEffort < ActiveRecord::Migration[5.2]

  def change
     remove_column :educations, :effort
     add_column :educations, :effort, :integer, precision: 3
 end
end
