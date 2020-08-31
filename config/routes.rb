Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'toppage/index', to: 'items/index#index'
# post 'users', to: 'devise/registrations#create'
get 'items/registration', to: 'items/new#new'

end
