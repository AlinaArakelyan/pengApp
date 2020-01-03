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
        @user = User.find_or_create_by(name: params[:user])
        @post = Post.create(user: @user, post: params[:post])
        if @post.valid?
            render json: @post
        else 
            render json: {errors: @post.errors.full_messages}
        end 
    end 

    def update
        # @likes = Like.find(params[post_id:[:id])
        # @like = Like.create(post_id: params[:id])
        @like = Like.create(post_id: params[:id])
        @post = Post.find(params[:id])
        # @post.update(strong_params)
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: @posts
    end 
    
    private
    
    def strong_params
        params.permit(:post, :likes)
    end
    
end

# // shovel onto association, build or create ex: post.likes.create
