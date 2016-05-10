Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/' => 'users#index'

  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'

# ================ normal controllers =====================
    resources :events
    resources :users   #read documentation on how this works
    resources :likes
    resources :artists
    resources :user_types
    resources :comments
    resources :genres
    resources :venues

# ================ api controllers return JSON=====================
  namespace :api do
    resources :events
    resources :users   #read documentation on how this works
    resources :likes
    resources :artists
    resources :user_types
    resources :comments
    resources :genres
    resources :venues
  end

end
