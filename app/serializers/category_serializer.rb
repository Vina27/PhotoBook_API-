class CategorySerializer < ActiveModel::Serializer
  attributes :id, :book_id, :title
end
