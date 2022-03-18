Rails.application.routes.draw do
  resources :users
  resources :activities 
        
  post "/login", to: "auth#login"


end
