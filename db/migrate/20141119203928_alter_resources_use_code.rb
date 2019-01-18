class AlterResourcesUseCode < ActiveRecord::Migration[5.2]
  def up
  	change_column :resources, :use_code, :decimal,precision: 5, scale: 2
  end
end


