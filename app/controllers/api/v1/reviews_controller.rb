class Api::V1::ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json:reviews, except: [:created_at, :updated_at]
    end

    
end