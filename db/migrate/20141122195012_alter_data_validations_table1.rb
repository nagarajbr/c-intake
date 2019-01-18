class AlterDataValidationsTable1 < ActiveRecord::Migration[5.2]
  def change
  	change_column :data_validations, :data_item_type, 'integer USING CAST(data_item_type AS integer)'
  end
end
