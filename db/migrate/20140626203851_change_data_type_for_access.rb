class ChangeDataTypeForAccess < ActiveRecord::Migration[5.2]
  def change
  	change_column :access_rights, :access, "char(2)"
  end
end
