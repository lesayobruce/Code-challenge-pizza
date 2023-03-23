Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :destroy] do
    resources :pizzas, only: [:index], controller: 'restaurant_pizzas'
  end
  resources :pizzas, only: [:index]
  resources :restaurant_pizzas, only: [:create]
end
