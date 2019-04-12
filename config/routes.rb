Rails.application.routes.draw do
  
  root 'webinars#index'  
  
  
  resources :webinars
  resources :participants do
  	collection { post :import }
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
