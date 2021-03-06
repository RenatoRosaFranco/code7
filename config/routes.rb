Rails.application.routes.draw do

  mount RailsAdmin::Engine => '//dashboard', as: 'rails_admin'
  # Authentication
  # @implemented
  devise_for :users

  # Application
  # @implemented
  root to: 'home#index'
  resource  :newsletter, only: [:create]
  resource  :contact, only: [:create]

  # API
  # @implemented
  namespace :api, constraints: { subdomain: 'api' } do
    namespace :v1 do
      with_options only: :index do |list|
        list.resources :clients
        list.resources :members
        list.resources :partners
        list.resources :posts
        list.resources :services
      end
    end
  end
end
