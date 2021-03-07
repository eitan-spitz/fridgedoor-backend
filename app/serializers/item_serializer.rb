class ItemSerializer < ActiveModel::Serializer
  ActiveModelSerializers.config.key_transform = :camel_lower
  attributes :id, :fdc_id, :fdc_description, :data_type
end
