Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :behaviours
      resources :boards
      resources :board_cards
      resources :cards
      resources :categories
      resources :users, only: [:index, :create]
      get '/validate_user', to: 'users#validate_user'
      post '/login', to: 'users#login'
      post '/logout', to: 'users#logout'
    end
  end
end
