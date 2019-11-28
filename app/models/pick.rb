class Pick < ApplicationRecord
  belongs_to :user
  belongs_to :name
  belongs_to :user_group, through: :users
  belongs_to :group, through: :users
end
