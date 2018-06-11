Rails.application.routes.draw do

  get 'warehouses/new'

  get 'warehouses/create'

  get 'warehouses/update'

  get 'warehouses/edit'

  get 'warehouses/destroy'

  get 'warehouses/show'

  get 'warehouses/index'

  resources :items

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
