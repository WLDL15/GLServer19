class AddDetailsToAlphaEvidences < ActiveRecord::Migration[5.1]
  def change
    add_column :alpha_evidences, :reviewed, :boolean, default: false
    add_column :alpha_evidences, :update_user, :string 
  end
end
