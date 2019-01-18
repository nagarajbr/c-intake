class DeleteCitizenshipAndResidencyFromAliens < ActiveRecord::Migration[5.2]
  def change
  	remove_column :aliens, :residency
    remove_column :aliens, :citizenship
  end
end
