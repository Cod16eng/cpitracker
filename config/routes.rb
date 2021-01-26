Rails.application.routes.draw do

  resources :researches
  root 'webinars#calendar'

  resources :speakers
  resources :webinars
  resources :participantwebinars
  resources :participants do
  	collection { post :import }
  end

  resources :participantwebinars do
    collection { post :upload }
  end
  get 'calendar', to: 'webinars#calendar'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
