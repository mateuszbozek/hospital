Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, :controllers => { :registrations => "registrations" }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'

  resources :main, only: [:index]
  resources :notes
  resources :surveys
  resources :patients
end
