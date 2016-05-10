Rails.application.routes.draw do

  get '/' => 'home#index'

  #=========== venue part ============
  get '/venues' => 'venues#index'
end
