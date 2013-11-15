Pairings::Application.routes.draw do

  root to: 'users#index'
  get 'wines/variety/:type' => 'wines#variety', as:'variety'
  get 'login'                 => 'sessions#new',     as:'login'
  get 'logout'                => 'sessions#destroy', as:'logout'

  resources :cheeses
  resources :sessions, only: :create
  resources :traits
  resources :users
  resources :wines

end
