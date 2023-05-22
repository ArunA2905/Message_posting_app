Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :messages
  get "signup", to: 'sessions#new'
  resources :users, except: [:new]
end
