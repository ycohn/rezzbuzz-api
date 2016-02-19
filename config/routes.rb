Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :buildings
      resources :messages
      resources :topics
    end
  end

  post '/users/sign_in', to: "sessions#create"

end
