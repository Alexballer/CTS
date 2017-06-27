Rails.application.routes.draw do
  resources :users
  resources :portfolios, except: [:show]
  get 'angular items', to: 'portfolio#angular'
  get 'portfiolo/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'


  resources :blogs
  
  root to: 'pages#home'
end
