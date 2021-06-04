Rails.application.routes.draw do
  get 'main/index'

  get 'sign_up', to: 'user#sign_up'
  post 'sign_up', to: 'user#create'

  get 'sign_in', to: 'session#new'
  post 'sign_in', to: 'session#create'

  delete 'logout', to: 'session#destroy'

  get 'password', to: 'password#edit', as: 'edit_password'
  patch 'password', to: 'password#update'

  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'
  get 'password/reset/edit', to: 'password_reset#edit'
  post 'password/reset/edit', to: 'password_reset#update'

  get '/home/index'
  root to: 'home#index'
end
