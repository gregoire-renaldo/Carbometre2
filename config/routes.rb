Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :footprints
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :items
    end
end
