class Badge < ApplicationRecord
    has_many :user_badges
    has_many :user, through: :user_badges
end
