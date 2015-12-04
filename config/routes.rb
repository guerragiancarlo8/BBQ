Rails.application.routes.draw do
  devise_for :users
  root 'barbecues#index'

  resources :barbecues, only: [ :index, :show, :new, :create ]
  get '/api/barbecues/:id' => 'barbecues#send_json'
  post '/api/barbecues/:id/join' => 'barbecues#join_bbq'
end
