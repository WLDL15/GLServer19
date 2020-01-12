class CreateAlphaItemDefs < ActiveRecord::Migration[5.1]
  def change
    create_table :alpha_item_defs do |t|
      t.integer :dseq
      t.text :ddescription
      t.references :alpha_state_def, foreign_key: true

      t.timestamps
    end
    add_column :alpha_item_defs, :item_level, :integer 
  end
end
