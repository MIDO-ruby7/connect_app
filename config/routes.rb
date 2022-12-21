Rails.application.routes.draw do
  root to: 'home#top'
  resources :users, only: %i[new create]
  resources :boards
  #get 'home/index'
end
