class API::V1::PostsController < ApplicationController
  respond_to :json, :js
  def index
     posts = Post.all
     render json: posts, only: [:title, :description, :content, :user]
  end
end
