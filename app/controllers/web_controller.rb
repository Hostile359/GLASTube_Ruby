# frozen_string_literal: true

class WebController < ApplicationController
  def index
    @posts = Post.order('created_at DESC').paginate(page: params[:page], per_page: 5)
  end
end
