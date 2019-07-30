class BarSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :reviews
end
