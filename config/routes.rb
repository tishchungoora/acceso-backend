Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :behaviours
      resources :boards
      resources :board_cards
      resources :cards
      resources :categories
      resources :users, only: [:index, :create, :show]
    end
  end
end
