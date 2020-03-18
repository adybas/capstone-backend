Rails.application.routes.draw do
  resources :user_ingredients
  resources :user_recipes
  resources :user_diets
  resources :diets
  resources :recipes
  resources :ingredients
  resources :users
  post '/login', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # post '/fakelogin', to: 'auth#fake_login'
end
