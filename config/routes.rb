Rails.application.routes.draw do
  # get 'users/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  # get 'customer/index'
  # get 'customer/show'
  # get 'customer/new'
  # get 'customer/edit'
  # get 'customer/delete'

  root 'customer#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
