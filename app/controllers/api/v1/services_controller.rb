class API::V1::ServicesController < ApplicationController
  respond_to :json, :js
  def index
    services = Service.all
    render json: services, only: [:name, :description]
  end
end
