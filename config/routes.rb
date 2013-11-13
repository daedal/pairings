Pairings::Application.routes.draw do

  root to: 'users#index'
  get 'wines/variety/:type' => 'wines#variety', as:'variety'

  resources :cheeses
  resources :traits
  resources :users
  resources :wines

end
