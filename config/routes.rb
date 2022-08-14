Rails.application.routes.draw do
  root to: "pages#home"
  resources :missions, only: [:new, :create, :destroy] do
  resources :orders, only: [:new, :create]
  end
  resources :orders, only: [:destroy]
end
