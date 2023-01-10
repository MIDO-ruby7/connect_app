Rails.application.routes.draw do
  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'
  get 'current_user_top', to: 'home#index'
  root to: 'home#top'
  resources :users, only: %i[new create]
  resources :boards
end
