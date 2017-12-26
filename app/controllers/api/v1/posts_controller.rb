module API
  module V1
    # utf-8
    class PostsController < ApplicationController
      respond_to :json, :js
      def index
        clients = Client.all
        render json: clients, only: %I[title description content user]
      end
    end
  end
end
