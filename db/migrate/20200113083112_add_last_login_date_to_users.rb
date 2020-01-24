class AddLastLoginDateToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :last_login_date, :datetime
  end
end
