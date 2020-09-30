class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :description, :img_url, :likes
  has_one :book_id
end
