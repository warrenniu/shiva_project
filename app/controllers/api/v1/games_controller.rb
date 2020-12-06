class Api::V1::GamesController < ApplicationController

    def index 
        games = Game.all
        render json:games
    end

    def show
        game = Game.find(params[:id])
        render json:game 
    end
##Yooooo

    def create
        game = Game.create!(game_params)
        render json: game
    end
    

    private 

    def game_params
        params.permit(:title, :description , :image ,:release_date, :platform) 
    end
    
end