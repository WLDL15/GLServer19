class AddLastLoginDateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_login_date, :datetime
    add_column :users, :login_count, :integer　, default: 0
  end
end
