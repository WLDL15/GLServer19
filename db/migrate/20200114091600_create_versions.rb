class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :name
      t.text :goal
      t.date :start
      t.date :end
      t.integer :level
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
