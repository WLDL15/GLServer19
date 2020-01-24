class AddVersionIdToSprints < ActiveRecord::Migration[5.1]
  def change
    add_reference :sprints, :version, foreign_key: true
  end
end
