class Api::V1::GamesController < ApplicationController

    def index 
        games = Game.all
        render json:games, except: [:created_at, :updated_at]
    end

    

    private 

    def game_params
        params.permit(:title, :description , :image ,:release_date, :overall_rating) 
    end
    
end