class UserFamilySerializer < ActiveModel::Serializer
  attributes :id, :user_id, :family_id
end
