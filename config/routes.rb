Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :behaviours
      resourcs :boards
      resources :board_cards
      resources :cards
      resources :categories
      resources :users, only: [:create]
    end
  end
end
