class CreateEbtAccountnumberSequence < ActiveRecord::Migration[5.2]
  def change
     execute "CREATE SEQUENCE ebt_account_number_seq"
  end
end
