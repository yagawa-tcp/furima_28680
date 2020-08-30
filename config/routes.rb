Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'toppage/index', to: 'items/index#index'
get 'users/sign_in', to: 'devise/sessions#new'
get 'users/sign_up', to: 'devise/registrations#new'
get 'items/registration', to: 'items/new#new'

end
