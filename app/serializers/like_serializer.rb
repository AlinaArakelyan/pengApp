class LikeSerializer < ActiveModel::Serializer
  attributes :id, :likes
  has_one :post
end
