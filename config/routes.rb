Rails.application.routes.draw do

  # Application
  # @implemented
  root to: 'home#index'
  resources :newsletters, only: [:create]
  resource  :contact, only: [:create]

  # API
  # @implemented
  namespace :api, constraints: { subdomain: 'api' } do
    namespace :v1 do
      with_options only: :index do |list|
        list.resources :clients
        list.resources :services
        list.resources :members
      end
    end
  end
end
