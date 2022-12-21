Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  root to: 'home#top'
  resources :users, only: %i[new create]
  resources :boards
  #get 'home/index'
end
