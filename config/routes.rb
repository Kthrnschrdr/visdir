Visdir::Application.routes.draw do
  root to: 'listings#index'

  # get "email" => 'users#email', :as => "email"
  get "signup" => 'users#new', :as => "signup"
  post "create_user" => 'users#create', :as => "create_user"
  
  get "login" => 'logins#new', :as => "login"
  post "login" => 'logins#create', :as => "create_login"
  
  get "logout" => 'logins#destroy', :as => "logout"
  
  resources :listings, :users

end
