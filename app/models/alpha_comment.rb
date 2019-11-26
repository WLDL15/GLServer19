class AlphaComment < ApplicationRecord
  belongs_to :alpha_evidence, optional: true
  belongs_to :scrum_member, optional: true
end
