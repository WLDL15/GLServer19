class ChangeRoleToScrumMembers < ActiveRecord::Migration[5.1]
  def change
  	change_column :scrum_members, :role, :integer, 'numeric USING CAST(target_column AS numeric)'
  end
end
