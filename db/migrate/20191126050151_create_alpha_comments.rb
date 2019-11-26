class CreateAlphaComments < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_comments do |t|
      t.text :body
      t.references :alpha_evidence, foreign_key: true
      t.references :scrum_member, foreign_key: true

      t.timestamps
    end
  end
end
