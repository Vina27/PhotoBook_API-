class CommentSerializer < ActiveModel::Serializer
  attributes :id, :photo_id, :content
  has_one :user
end
