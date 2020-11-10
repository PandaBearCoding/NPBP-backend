Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users
  namespace :api do
    namespace :v1 do
      resources :users
      get "/users/:id/favorites", to: "users#favorites"
    end
  end 

  # home page?
  namespace :api do
    namespace :v1 do
      resources :interests
    end
  end
  
  # items
  namespace :api do
    namespace :v1 do
      resources :items
    end
  end 
    
end

