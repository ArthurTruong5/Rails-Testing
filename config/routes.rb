Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # portfolio/:id', to: 'portfolios#show this CHANGES to show

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  resources :invoices

  root to: 'pages#home' # root path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
