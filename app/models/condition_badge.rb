class ConditionBadge < ApplicationRecord
    has_many :user_condition_badges
    has_many :user, through: :user_condition_badges
end
