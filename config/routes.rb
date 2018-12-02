Rails.application.routes.draw do
  get 'public/check_beverage_type'
  get 'public/beverage_pairing'
  get 'public/welcome'
  get 'public/order'
  get 'public/messagewaiter'
  resources :winepairings
  resources :beerpairings
  resources :maindishes
  resources :wines
  resources :beers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
