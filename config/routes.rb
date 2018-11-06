Rails.application.routes.draw do
  
  # get 'sessions/new'
  root to: 'application#landing'

  match '/signup',  to: 'users#new',            via: 'get'
  get 'about_us' => 'application#about_us'
  get 'help' => 'application#help'
  get 'rules' => 'application#rules'
  resources :comments
  resources :user_informations
  resources :users
  # resources :sessions
  get 'login', to: 'sessions#new'
  delete 'logout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'

end
