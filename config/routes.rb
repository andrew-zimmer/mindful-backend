Rails.application.routes.draw do
  resources :moods
devise_for :users

  namespace :v1, defaults: { format: :json } do
    resources :sessions, only: [:create, :destroy]
    resources :users, only: [:create] do
      resources :mood, only: [:create]
    end
    resources :moods, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
