class Api::V1::ReviewsController < ApplicationController

    def index 
        reviews = Review.all
        render json: reviews
    end

    def show
        review = Review.find(params[:id])
        render json: review

    def create
        review = Review.create!(review_params)
        render json: review
    end
    
    def update
        review = Review.find(params[:id])
        render json: review

    def destroy
        review = Review.find(params[:id])
        review.destroy!
        render json: {}
    end

    private
    # def find_review 
    #     review = Review.find(params[:id])
    # end 
    
    def review_params
        params.permit(:title, :rating, :like, :content, :playtime, :user_id, :game_id)
    end
end