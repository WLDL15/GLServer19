class AddDetailsVersions < ActiveRecord::Migration[5.1]
  def change
    add_column :versions, :length, :integer
  end
end
