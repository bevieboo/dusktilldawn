Rails.application.routes.draw do

  get '/' => 'home#index'

  resources :events
  resources :users   #read documentation on how this works
  resources :likes
  resources :artists
  resources :user_types
  resources :comments
  resources :genres
  resources :venues

end
