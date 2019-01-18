class AddColumnToClientAndAlien < ActiveRecord::Migration[5.2]
  def change
  	add_column :aliens, :citizenship, "char(1)"
  	add_column :clients, :residency, "char(1)"
  end
end
