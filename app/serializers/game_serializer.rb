class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image,:release_date,:overall_rating
end
