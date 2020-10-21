Rails.application.routes.draw do
  root 'home#index'
  get 'about', to: 'home#about'
  resources :courses
  resources :students, except: %i[destroy]
end
