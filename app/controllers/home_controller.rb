class HomeController < ApplicationController
  def index
    @newsletter = Newsletter.new
    @contact = Contact.new
  end
end
