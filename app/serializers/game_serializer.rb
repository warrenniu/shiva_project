class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image,:release_date,:overall_rating
  has_many :reviews 
  has_many :users, through: :reviews
end
