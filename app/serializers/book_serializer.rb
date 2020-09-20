class BookSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :user_id
end
