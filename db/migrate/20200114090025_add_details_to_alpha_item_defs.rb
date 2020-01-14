class AddDetailsToAlphaItemDefs < ActiveRecord::Migration[5.1]
  def change
    add_column :alpha_item_defs, :item_level, :integer
    add_column :alpha_item_defs, :item_point, :integer
  end
end
