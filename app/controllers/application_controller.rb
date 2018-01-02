require 'application_responder'

# utf-8
class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  before_action :set_locale
  protect_from_forgery with: :exception

  # set current locale
  # @implemented
  def set_locale
    return true  
  end

  # set default url options 
  # @implmented
  def default_url_options
  	{locale: 'en'}
  end
end
