class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end 

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @user = User.create(strong_params)
        if @user.valid?
            render json: @use
        else 
            render json: {errors: @user.errors.full_messages}
        end 
    end 

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json: @user
    end

    def delete
        @user = User.find(params[:id])
        @user.delete
        render json: @users
    end 

    private

    def strong_params
        params.permit(:name)
    end


end 

