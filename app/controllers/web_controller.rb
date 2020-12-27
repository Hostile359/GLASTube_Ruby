# frozen_string_literal: true

class WebController < ApplicationController
  # def home_page; end
  def index
    @posts = Post.order('created_at DESC').paginate(page: params[:page], per_page: 5)
    # @user = user
  end
end
