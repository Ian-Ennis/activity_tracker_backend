Rails.application.routes.draw do
  
  Rails.application.routes.draw do
    resources :activities, only: [:index, :create, :read, :update, :destroy]
    resource :users, only: [:create]
    post "/login", to: "users#login"
    get "/auto_login", to: "users#auto_login"
  end

end
