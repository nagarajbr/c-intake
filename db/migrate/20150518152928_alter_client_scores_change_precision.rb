class AlterClientScoresChangePrecision < ActiveRecord::Migration[5.2]
  def change
  	change_column :client_scores, :scores, :decimal, precision: 5, scale: 2
  end
end
