Rails.application.routes.draw do
  root "pics#index"
  resources :pics, only: [:new, :create]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
