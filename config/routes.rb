Rails.application.routes.draw do
  resources :products, only: [:index, :new, :updated, :show]

  root to: 'products#index'

  get 'products/new'
  get 'products/updated'
  get 'products/show'

  get 'abouts/index', 'about'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
