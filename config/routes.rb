Rails.application.routes.draw do
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "logout", sign_up: "register" }
  resources :posts, except: [:show]
  get '/posts/:date/:id', to: 'posts#show'

  get '/about', to: 'home#about'
  get '/home/:date/:id', to: 'home#show'
  get '/home/', to: 'home#index'
  
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
