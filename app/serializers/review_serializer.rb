class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :rating, :content,:playtime, :like, :game_id, :user_id
end