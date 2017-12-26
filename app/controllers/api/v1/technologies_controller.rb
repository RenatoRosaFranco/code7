module API
  module V1
    # utf-8
    class TechnologiesController < ApplicationController
      respond_to :json, :js
      def index
        technologies = Technology.all.order :name
        render json: technologies, only: %I[name description]
      end
    end
  end
end
