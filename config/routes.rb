Rails.application.routes.draw do
  root to: 'items#index'
  devise_for :users
  resources :destroy_user_session

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'toppage/index', to: 'items/index#index'
# post 'users', to: 'devise/registrations#create'
get 'items/registration', to: 'items/new#new'
# delete 'users/sign_out', to: 'items/index#index'
end
