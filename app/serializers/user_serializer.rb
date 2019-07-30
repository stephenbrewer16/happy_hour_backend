class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :email, :image, :reviews
end
