class PostsController < ApplicationController

    def index
        @posts = Post.all
        render json: @posts
    end 

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def create
        @post = Post.create(strong_params)
        if @post.valid?
            render json: @post
        else 
            render json: {errors: @post.errors.full_messages}
        end 
    end 

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        render json: @post
    end

    def delete
        @post = Post.find(params[:id])
        @post.delete
        render json: @posts
    end 

end


