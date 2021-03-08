class UserSerializer < ActiveModel::Serializer
  ActiveModelSerializers.config.key_transform = :camel_lower
  attributes :id, :username
  has_many :user_families, serializer: UserFamilySerializer
end
