class DropUnusedTables2 < ActiveRecord::Migration[5.2]
  def change
  		drop_table :client_sanctions
  		drop_table :client_referrals
  end
end
