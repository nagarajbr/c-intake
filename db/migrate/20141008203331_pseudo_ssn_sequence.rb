class PseudoSsnSequence < ActiveRecord::Migration[5.2]


 def up
    execute "CREATE SEQUENCE ssn_seq INCREMENT 1 MINVALUE 900100001 START 900100008"
  end


end
