Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants, only: [:show, :new, :create] do
    resources :reviews, only: [:create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
