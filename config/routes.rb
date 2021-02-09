Rails.application.routes.draw do
  resources :items
  resources :families do
    resources :fridges do
      resources :fridge_items
    end
    resources :shoppinglists do
      resources :shopping_items
    end
  end
  resources :users do
    resources :user_families
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
