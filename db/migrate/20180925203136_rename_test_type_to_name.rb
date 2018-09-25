class RenameTestTypeToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tests, :type, :name
  end
end
