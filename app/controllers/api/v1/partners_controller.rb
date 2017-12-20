class API::V1::PartnersController
  respond_to :jsom, :js
  def index
     partners = Patner.all
     render json: partners, only: [:name, :description, :link]
  end
end
