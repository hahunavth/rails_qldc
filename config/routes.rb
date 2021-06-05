Rails.application.routes.draw do
  get 'user_tam_tru/new'
  resources :tam_vangs
  resources :tam_trus
  resources :ho_khaus
  resources :nguoi_dans

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

  get 'ho_khaus/:id/show_nguoi_dan/', to: 'ho_khaus#show_nguoi_dan', as: 'nguoi_dans_in_ho_khau'

  get 'user/dang_ky_tam_tru', to: 'tam_trus#user_index'
  get 'user/dang_ky_tam_tru/:id/edit', to: 'tam_trus#user_edit', as: 'user_edit_tam_tru'
  get 'user/dang_ky_tam_tru/:id/show', to: 'tam_trus#user_show'
  post 'user/dang_ky_tam_tru/:id/new', to: 'tam_trus#user_new'

  get 'user/dang_ky_tam_vang', to: 'tam_vangs#user_index'

  get '/home/index'
  root to: 'home#index'
end
