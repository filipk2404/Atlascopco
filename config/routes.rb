Rails.application.routes.draw do
  get 'items/new'

  get 'items/create'

  get 'items/update'

  get 'items/edit'

  get 'items/destroy'

  get 'items/index'

  get 'items/show'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
