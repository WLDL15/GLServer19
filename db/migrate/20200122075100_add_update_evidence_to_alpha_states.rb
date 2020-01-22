class AddUpdateEvidenceToAlphaStates < ActiveRecord::Migration[5.1]
  def change
    add_column :alpha_states, :update_evidence, :date
  end
end
