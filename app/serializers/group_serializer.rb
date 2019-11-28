class GroupSerializer < ActiveModel::Serializer
  attributes :id, :group_name, :password_digest
end
