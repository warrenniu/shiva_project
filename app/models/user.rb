class User < ApplicationRecord
    has_many :reviews, dependent: :destroy
    has_many :games, through: :reviews
end
