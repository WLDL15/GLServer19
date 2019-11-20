class AlphaState < ApplicationRecord
  belongs_to :alpha_alpha
  belongs_to :alpha_state_def

  has_many   :alpha_items, dependent: :destroy

  def self.build_framework(alpha_alpha, alpha_state_def)
    state = alpha_alpha.alpha_states.create(alpha_state_def: alpha_state_def)

    item_defs = alpha_state_def.alpha_item_defs
    if item_defs then
      item_defs.each do |item_def|
        state.alpha_items << AlphaItem.build_framework(state, item_def)
      end
    end

    return state
  end

  def dseq
    self.alpha_state_def.dseq
  end

  def dname
    self.alpha_state_def.dname
  end
  
  def ddescription
    self.alpha_state_def.ddescription
  end

  def progress_rate
    self.completed_items.to_f / self.alpha_items.size
  end
end
