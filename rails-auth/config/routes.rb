Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show, :index]
  resources :sessions, only: [:new, :create]
  delete '/session', to: 'sessions#destroy', as: 'logout'
  get '/sessions/new', to: 'sessions#new', as: 'login'
end
