Rails.application.routes.draw do
  resources :portfolios

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :blogs
  resources :invoices

  root to: 'pages#home' # root path
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
