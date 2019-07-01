Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :connections#, only: [:index, :update]
     resources :continents#, only: [:index, :update]
     resources :countries#, only: [:index, :update]
     resources :eps#, only: [:index, :update]
     resources :ets#, only: [:index, :update]
     resources :cps
     resources :events#, only: [:index, :update]
     resources :people#, only: [:index, :update]
     resources :subscriptions#, only: [:index, :update]
     resources :places#, only: [:index, :update]
     resources :types#, only: [:index, :update]
     resources :users#, only: [:index, :update, :create]
     resources :days
     resources :months
     resources :years
     resources :month_days
     post '/login', to: 'auth#create'
     get '/profile', to: 'users#profile'
     get '/reauth', to: "auth#reauth"
   end
 end
end
