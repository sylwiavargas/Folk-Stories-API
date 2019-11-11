Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :connections, only: [:index, :show, :update, :create]
    resources :events
    resources :bios, controller: 'people', only: [:index, :show, :update, :create]
    resources :users
    resources :months, only: [:index, :show, :update, :create]
    resources :pps, only: [:index, :show, :update, :create]
    resources :dates, controller: 'month_days', param: :mdd
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      get '/reauth', to: "auth#reauth"
    end
  end
end

    # resources :continents#, only: [:index, :update]
    # resources :countries#, only: [:index, :update]
    # resources :eps#, only: [:index, :update]
    # resources :ets#, only: [:index, :update]
    # resources :cps
    # resources :subscriptions#, only: [:index, :update]
    # resources :places#, only: [:index, :update]
    # resources :types#, only: [:index, :update]
    # resources :days
    # resources :months
    # resources :years
