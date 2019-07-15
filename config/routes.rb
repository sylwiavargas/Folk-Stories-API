Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :connections, only: [:index, :shpw, :update, :create]
     # resources :continents#, only: [:index, :update]
     # resources :countries#, only: [:index, :update]
     # resources :eps#, only: [:index, :update]
     # resources :ets#, only: [:index, :update]
     # resources :cps
     resources :events, only: [:index, :shpw, :update, :create]
     resources :bios, controller: 'people', only: [:index, :show, :update, :create]
     # resources :subscriptions#, only: [:index, :update]
     # resources :places#, only: [:index, :update]
     # resources :types#, only: [:index, :update]
     resources :users
     resources :months, only: [:index, :shpw, :update, :create]
     # resources :days
     # resources :months
     resources :pps, only: [:index, :shpw, :update, :create]
     # resources :years
     resources :dates, controller: 'month_days', param: :mdd
     post '/login', to: 'auth#create'
     get '/profile', to: 'users#profile'
     get '/reauth', to: "auth#reauth"
   end
 end
end
