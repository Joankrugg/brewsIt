Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  get 'politics', to: 'pages#politics'
  get 'datas', to: 'pages#datas'
  resources :beers do
    resources :places
  end
  resources :publications
  resources :spots do
    resources :specificities, only: [:new, :create, :edit, :update, :show]
  end
  resources :styles
  resources :trackrs, only: [:new, :create, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
