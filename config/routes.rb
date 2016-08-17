Rails.application.routes.draw do

  get 'districts/index'

  get 'districts/new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root 'customer#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
