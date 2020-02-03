class ChangeRoleToScrumMembers < ActiveRecord::Migration[5.1]
  def change
  	change_column :scrum_members, :role, :integer, 'integer USING CAST(role AS integer)'
  end
end
