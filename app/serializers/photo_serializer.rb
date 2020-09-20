class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :description, :img_url
  has_one :book_id
end
