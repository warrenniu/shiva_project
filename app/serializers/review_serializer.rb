class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :content,:playtime
end