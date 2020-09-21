class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :books, :photos, :comments

end
