class Name < ApplicationRecord
    has_many :picks
    has_many :users, through: :picks
    has_many :user_groups, through: :users
    has_many :groups, through: :user_groups
end
