Rails.application.routes.draw do
    
  root 'webinars#index'  
  
  resources :speakers
  resources :webinars
  resources :participantwebinars
  resources :participants do
  	collection { post :import }
  end

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
