class AlphaFrameworkDef < ApplicationRecord
  has_many :alpha_alpha_defs, dependent: :destroy
end
