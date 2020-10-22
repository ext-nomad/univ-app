Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :courses
  resources :users, except: %i[new destroy]
end
