class GameSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :image, :release_date, :platform
  has_many :reviews 
  has_many :users, through: :reviews
end
