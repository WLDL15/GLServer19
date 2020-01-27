class CreateUserConditionBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :user_condition_badges do |t|
      t.integer :user_id
      t.integer :condition_badge_id

      t.timestamps
    end
  end
end
