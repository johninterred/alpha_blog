Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'page/home', to: 'page#home'
  root 'page#home'
  get 'about', to: 'page#about'
  resources :articles
  get 'signup', to: 'users#new'
  resources :users, except: [:new] 
end
