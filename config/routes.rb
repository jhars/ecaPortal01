Rails.application.routes.draw do
  get 'customer/index'

  get 'customer/show'

  get 'customer/new'

  get 'customer/edit'

  get 'customer/delete'

  root 'customer#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
