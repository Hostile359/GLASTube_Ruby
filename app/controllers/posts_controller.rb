# frozen_string_literal: true

class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]

  def index
    user_id = params[:user_id]
    @user = User.find_by_id(user_id)
    @posts = Post.where(user_id: user_id).order('created_at DESC').paginate(page: params[:page], per_page: 5)
    # @user = user
  end

  def show
    @user = User.find_by_id(@post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :video)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
