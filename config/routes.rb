Rails.application.routes.draw do
  devise_for :users
  root "pics#index"
  resources :pics, only: [:new, :create, :show, :destroy]
  get 'search', to: "pics#search"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
