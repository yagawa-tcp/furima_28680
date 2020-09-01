Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :destroy_user_session

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'toppage/index', to: 'items/index#index'
get 'items/registration', to: 'items/new#new'
end
