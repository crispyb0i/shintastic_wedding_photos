Rails.application.routes.draw do
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
      resources :images
    end
end
