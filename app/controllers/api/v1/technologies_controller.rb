class API::V1::TechnologiesController < ApplicationController
  respond_to :json, :js
  def index
    technologies = Technology.all
    render json: technologies, only: [:name, :description]
  end
end
