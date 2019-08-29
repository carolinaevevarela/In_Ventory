Rails.application.routes.draw do
  resources :categories
  resources :books
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to:'pages#index'
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
