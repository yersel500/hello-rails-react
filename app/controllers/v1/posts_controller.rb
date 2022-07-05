class V1::MessagesController < ApplicationController
  def index
    posts = Post.all
    render json: posts
  end
end
