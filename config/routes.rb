Rails.application.routes.draw do
  root 'webinars#index'

  get 'webinars/new'

  get 'webinars/create'

  get 'webinars/edit'

  get 'webinars/update'

  get 'webinars/show'

  get 'webinars/destroy'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
