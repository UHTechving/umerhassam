Rails.application.routes.draw do
  resources :notes
  resources :tasks
  resources :projects
  devise_for :users
  resources :homes
  root 'homes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end