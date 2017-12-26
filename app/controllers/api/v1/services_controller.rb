module API
  module V1
    # utf-8
    class ServicesController < ApplicationController
      respond_to :json, :js
      def index
        services = Service.all
        render json: services, only: %I[name description]
      end
    end
  end
end
