Rails.application.routes.draw do
  resources :articles
  
  get '/admin', to: 'articles#admin'

  root 'articles#index'
end
