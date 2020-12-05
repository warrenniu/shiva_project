class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image,:release_date,:overall_rating, :platform
  has_many :reviews 
  has_many :users, through: :reviews
end
