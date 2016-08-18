Rails.application.routes.draw do
  # get 'users/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # get '/login' => 'sessions#new'
  # post '/login' => 'sessions#create'
  # get '/logout' => 'sessions#destroy'

  # get 'test_users/index'
  # get 'test_users/show'
  # get 'test_users/delete'
  # get 'test_users/edit'

  # get '/signup' => 'test_users#new'
  # post '/test_users' => 'test_users#create'

  # get 'customer/index'
  # get 'customer/show'
  # get 'customer/new'
  # get 'customer/edit'
  # get 'customer/delete'

  root 'customer#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
