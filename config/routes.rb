Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to:'pages#index'
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
