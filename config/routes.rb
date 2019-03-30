Rails.application.routes.draw do
  get 'tcc/tcc'
  get 'pages/erro'
  devise_for :users
  mount RailsAdmin::Engine => '/entrar', as: 'rails_admin'
  resources :products
  root 'products#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
