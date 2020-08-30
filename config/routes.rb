Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :sign_up, only: [:index, :show, :new, :create, :edit, :update] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'toppage/index', to: 'items/index#index'
get 'users/sign_in', to: 'devise/sessions#new'
post 'users/sign_up', to: 'devise/registrations#new'
get 'items/registration', to: 'items/new#new'

end
