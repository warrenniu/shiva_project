class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all
        render json:users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])
        render json:user 
    end

    
end