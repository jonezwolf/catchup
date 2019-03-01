Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root :to => 'catchupevents#index'
  end

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :catchupevents, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :index, :destroy]
  end

  get '/mybookings', to: 'bookings#index', as: :my_bookings
  # get '/mycatchups', to: 'catchupevents#index', as: :my_catchupevents
end
