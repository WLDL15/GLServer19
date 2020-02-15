class RenameStartColumnToVersions < ActiveRecord::Migration[5.1]
  def change
    rename_column :versions, :end, :end_day
    rename_column :versions, :start, :start_day
  end
end
