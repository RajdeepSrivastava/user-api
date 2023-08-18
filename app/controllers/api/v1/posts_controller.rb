class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      render json: post, status: 200
    else
      render json: {error: "Can't create"}
    end
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update
      render json: post , status: 200
    else
      render json: {error: "Can't Update"}
    end
  end

  end
end
