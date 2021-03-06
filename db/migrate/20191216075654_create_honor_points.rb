class CreateHonorPoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.integer :user_id
      t.integer :value
      t.string :category
      t.text :message

      t.timestamps
    end
    add_index :points, :user_id
  end
end
