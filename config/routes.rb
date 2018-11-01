Rails.application.routes.draw do
  root to: 'application#landing'

  get 'about_us' => 'application#about_us'
  get 'help' => 'application#help'
  get 'rules' => 'application#rules'
  resources :comments
  resources :user_informations
end
