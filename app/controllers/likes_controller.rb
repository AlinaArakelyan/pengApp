class LikesController < ApplicationController

    def index
        @likes = Like.all
        render json: @likes
    end 

    def show
        @like = Like.find(params[:id])
        render json: @like
    end

    def create
        @like = Like.create(strong_params)
        render json: @like
    end 

    def update
        @like = Like.find(params[:id])
        @like.update(like_params)
        render json: @like
    end

    # def delete
    #     @like = Like.find(params[:id])
    #     @like.delete
    #     render json: @likes
    # end 

    private

    def strong_params
        params.permit(:post_id, :likes)
    end
end

