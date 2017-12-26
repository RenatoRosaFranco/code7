module API
  module V1
    # utf-8
    class PartnersController < ApplicationController
      respond_to :json, :js
      def index
        clients = Client.all
        render json: clients, only: %I[name description link]
      end
    end
  end
end
