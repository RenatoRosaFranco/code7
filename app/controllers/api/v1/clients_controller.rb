class API::V1::ClientsController < ApplicationController
  respond_to :json, :js
  def index
    clients = Client.all
    render json: clients, only: [:name, :description, :link]
  end
end
