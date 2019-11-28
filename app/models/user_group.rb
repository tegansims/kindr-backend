class UserGroup < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :picks, through: :users
  has_many :names, through: :picks
end
