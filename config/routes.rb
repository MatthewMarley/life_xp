Rails.application.routes.draw do
  
  root to: 'pages#home'
  get '/about', to: 'pages#about'
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :games do
    resources :tasks
    resources :dailys
  end
  
end
