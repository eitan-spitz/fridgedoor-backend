Rails.application.routes.draw do
  resources :shopping_items
  resources :shoppinglists
  resources :items
  resources :fridge_items
  resources :fridges
  resources :families
  resources :user_families
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
