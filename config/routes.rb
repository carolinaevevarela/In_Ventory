Rails.application.routes.draw do
  resources :guide_items
  resources :guides
  resources :editorials
  resources :categories
  resources :books
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }

  # devise_for :users, skip: :all
  #     get 'users/edit'
  root to:'pages#index'
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
