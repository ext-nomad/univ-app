Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  post 'enroll', to: 'user_courses#create'
  delete 'discard', to: 'user_courses#destroy'

  resources :courses, only: %i[index show]
  resources :users, except: %i[new show destroy]
end
