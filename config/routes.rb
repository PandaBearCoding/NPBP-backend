Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # profile
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end

  # favorites
  namespace :api do
    namespace :v1 do
      resources :favorites
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

  # log in 
  namespace :api do
    namespace :v1 do
      resources :login
    end
  end

  # log out 
  namespace :api do
    namespace :v1 do
      delete :logout
    end
  end 
    
end

