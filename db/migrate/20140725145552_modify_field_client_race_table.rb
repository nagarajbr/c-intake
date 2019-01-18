class ModifyFieldClientRaceTable < ActiveRecord::Migration[5.2]
 def self.up
    rename_column :client_races, :race_type, :race_id
  end
end
