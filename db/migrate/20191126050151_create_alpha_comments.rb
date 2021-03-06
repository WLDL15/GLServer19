class CreateAlphaComments < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_comments do |t|
      t.text :body
      t.references :alpha_evidence, foreign_key: true
      t.references :scrum_member, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
      
    end
    remove_foreign_key :alpha_comments, :scrum_members
    remove_reference :alpha_comments, :scrum_member
    add_column :alpha_comments, :like_count, :integer, default: 0
  end
end
