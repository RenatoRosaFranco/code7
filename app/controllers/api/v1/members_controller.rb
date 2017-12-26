module API
  module V1
    # utf-8
    class MembersController < ApplicationController
      respond_to :json, :js
      def index
        members = Member.all
        render json: members, only: %I[avatar name description role]
      end
    end
  end
end
