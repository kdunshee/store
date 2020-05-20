Rails.application.routes.draw do
  # get 'items/index'
  # get 'items/show'
  # get 'items/new'
  # get 'items/edit'
  # get 'departments/index'
  # get 'departments/show'
  # get 'departments/new'
  # get 'departments/edit'

  resources departments do
    resources :items
  end
  root "departments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
