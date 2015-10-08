Rails.application.routes.draw do
  resources :books
  devise_for :users
  get 'pages/home'

  root 'pages#home'
end
