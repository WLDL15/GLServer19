class UserConditionBadge < ApplicationRecord
    belongs_to :user
    belongs_to :condition_badge
end
