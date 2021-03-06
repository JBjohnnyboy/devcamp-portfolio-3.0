Rails.application.routes.draw do
  resources :blogs
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolios/:id', to: 'portfolios#show', as: 'portfolios_show'
  get 'guides/book'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  root to: 'pages#home'
end
