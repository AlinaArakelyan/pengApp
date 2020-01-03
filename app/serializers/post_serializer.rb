class PostSerializer < ActiveModel::Serializer
  attributes :id, :post, :likes, :comments
  has_one :user
end
