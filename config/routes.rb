Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :categories do
    resources :products do
      resources :reviews
    end
  end

  root 'categories#index'
  get '/users/:id' => 'users#show'
end
