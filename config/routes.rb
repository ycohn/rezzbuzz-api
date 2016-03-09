Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "users/me", to: "users#me"
      delete "user_buildings/:id/destroy", to: "user_buildings#destroy"
      resources :users
      resources :buildings
      resources :messages
      resources :topics
      resources :user_buildings
      resources :subscriptions
    end
  end

  # devise_for :users, controllers: { sessions: 'sessions' }

  post '/users/sign_in', to: "sessions#create"

end
