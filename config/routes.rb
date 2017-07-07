Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'users/show'

  get 'user/show'

  root :to => 'images#index'
  #
  # get 'images/new'
  #
  # get 'images/create'
  #
  # get 'images/show'
  #
  # get 'images/destroy'

  devise_for :users

  resources :users do
      resources :images do
        resources :comments
      end
    end
end
