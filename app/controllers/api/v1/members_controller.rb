class API::V1::MembersController < ApplicationController
  respond_to :json, :js
  def index
    members = Member.all
    render json: members, only: [:name, :description, :role]
  end
end
