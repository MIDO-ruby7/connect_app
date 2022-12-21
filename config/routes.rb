Rails.application.routes.draw do
  root to: 'home#top'

  resources :boards
  #get 'home/index'
end
