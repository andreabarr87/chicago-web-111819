Rails.application.routes.draw do
  resources :wishes
  resources :wishes, except: :destroy
  resources :whales, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "whales#index"
end
