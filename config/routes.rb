Rails.application.routes.draw do
  get 'doses/create'
  get 'doses/new'
  get 'ingredients/index'
  resources :cocktails do
    resources :doses, only: [:create, :new]
    resources :ingredients, only: [ :index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
