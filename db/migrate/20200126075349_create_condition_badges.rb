class CreateConditionBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :condition_badges do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
