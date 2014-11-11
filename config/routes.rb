Elovation::Application.routes.draw do
  resources :games do
    resources :results, only: [:create, :destroy, :new]
    resources :ratings, only: [:index]
  end

  resources :players do
    resources :games, only: [:show], controller: 'player_games'
    resources :opponents, only: [:show], controller: 'player_opponents'
  end

  get '/dashboard' => 'dashboard#show', as: :dashboard
  root to: 'dashboard#show'
end
