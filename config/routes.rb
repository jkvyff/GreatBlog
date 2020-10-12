Rails.application.routes.draw do
  resources :posts
  get '/about', to: 'home#about'
  get '/home/:id', to: 'home#show'
  get '/home', to: 'home#index'
  
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
