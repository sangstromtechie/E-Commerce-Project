Rails.application.routes.draw do
  resources :products, only: [ :index, :new, :updated, :show ]
  resources :addresses

  root to: 'products#index'

  get 'abouts/index', 'about'

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :customers, controllers: { registrations: 'registrations' }

  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
