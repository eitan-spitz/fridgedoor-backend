class ItemSerializer < ActiveModel::Serializer
  attributes :id, :fdc_id, :fdc_description, :data_type
end
