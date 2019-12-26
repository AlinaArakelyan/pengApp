class CommentsController < ApplicationController

    def index
       @comments = Comment.all
    render json: @comments
    end 

    def show
        @comment = Comment.find(params[:id])
        render json: @comment
    end

    def create
        @comment = Comment.create(strong_params)
        render json: @comment
    end 

    def update
        @comment = Comment.find(params[:id])
        @comment.update(comment_params)
        render json: @comment
    end

    def delete
        @comment = comment.find(params[:id])
        @comment.delete
        render json:@comments
    end 

    private

    def strong_params
        params.permit(:name)
    end


end
