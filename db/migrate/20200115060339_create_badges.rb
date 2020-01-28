class CreateBadges < ActiveRecord::Migration[5.1]
  def change
    create_table :badges do |t|
      t.string :name
      t.integer :need_point
      t.string :image
      
      t.timestamps
    end
  end
end
